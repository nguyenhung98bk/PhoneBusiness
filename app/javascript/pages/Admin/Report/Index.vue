<template>
  <div class="card admin-content-container">
    <div class="row">
      <div class="col-12">
        <div class="white_card_header">
          <div class="box_header m-0">
            <div class="main-title">
              <h3 class="m-0">Thống kê</h3>
            </div>
          </div>
        </div>
        <div class="white_card_body">
          <div class="mb-4">
            <label for="date" class="form_label calendar-title">Thời gian hiển thị</label>
            <div class="form_input">
              <DateTimePicker v-if="typeSearchTime == searchTime.month" v-model="month" format="MM/YYYY"
                              :editable="false" :clearable="false"
                              class="input_wrapper calender full_width" input-class="calendar__input calendar-text"
                              type="month"
                              :disabled-date="(date) => date > (new Date().setHours(0, 0, 0, 0))"
                              @input="onChangeMonth"
              >
                <span slot="icon-calendar">
                  <b-icon-calendar />
                </span>
              </DateTimePicker>
              <DateTimePicker v-if="typeSearchTime == searchTime.year" v-model="year" format="YYYY"
                              :editable="false" :clearable="false"
                              class="input_wrapper calender full_width" input-class="calendar__input calendar-text"
                              type="year"
                              :disabled-date="(date) => date > (new Date().setHours(0, 0, 0, 0))"
                              @input="onChangeMonth"
              >
                <span slot="icon-calendar">
                  <b-icon-calendar />
                </span>
              </DateTimePicker>
              <DateTimePicker v-if="typeSearchTime == searchTime.range" v-model="rangeDate" format="DD/MM/YYYY"
                          :editable="false" :clearable="false"
                          class="input_wrapper calender full_width" input-class="calendar__input calendar-text"
                          type="date"
                          range
                          :disabled-date="(date) => date > (new Date().setHours(0, 0, 0, 0))"
                          @input="onChangeRange"
              >
                <span slot="icon-calendar" />
              </DateTimePicker>
            </div>
          </div>
          <div class="menu-search">
            <ul class="btn-choose-type">
              <li>
                <input type="radio" v-model="typeSearchTime" v-on:change="onChangeTypeSearchTime" value="month" name="typeSearchTime" />
                <label class="type-search-time">Tháng</label>
              </li>
              <li>
                <input type="radio" v-model="typeSearchTime" v-on:change="onChangeTypeSearchTime" value="year" name="typeSearchTime" />
                <label class="type-search-time">Năm</label>
              </li>
              <li>
                <input type="radio" v-model="typeSearchTime" v-on:change="onChangeTypeSearchTime" value="range" name="typeSearchTime" />
                <label class="type-search-time">Khoảng thời gian</label>
              </li>
            </ul>
          </div>

          <div class="information-statistics">
            <div v-if="typeSearchTime == searchTime.month" class="infomation-by-month">
              <div class="order-statistical-container"> 
                <button class="btn-month pre actived" @click="preMonth">&#8249;</button>
                <div class="detail-month">
                  <div class="month">
                    <div class="content-month">
                      <p class="title-time">xxxxxxxxxxxx</p>
                      <p class="count">Số lượng  <span class="content_right"><span class="text_content font_text-bold"></span></span></p>
                      <p>Doanh thu <span class="content_right"><span class="text_content font_text-bold"></span>đ</span></p>
                    </div>
                  </div>
                </div>
                <div class="detail-month">
                  <div class="month">
                    <div class="content-month">
                      <p class="title-time">xxxxxxxxxxxx</p>
                      <p class="count">Số lượng  <span class="content_right"><span class="text_content font_text-bold"></span></span></p>
                      <p>Doanh thu <span class="content_right"><span class="text_content font_text-bold"></span>đ</span></p>
                    </div>
                  </div>
                </div>
                <div class="detail-month">
                  <div class="month">
                    <div class="content-month">
                      <p class="title-time">xxxxxxxxxxxx</p>
                      <p class="count">Số lượng  <span class="content_right"><span class="text_content font_text-bold"></span></span></p>
                      <p>Doanh thu <span class="content_right"><span class="text_content font_text-bold"></span>đ</span></p>
                    </div>
                  </div>
                </div>
                <button class="btn-month next" :class="isActiveBtnNextMonth() ? 'actived' : 'disabled'" @click="nextMonth">&#8250;</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import moment from 'moment';
import DatePicker from 'vue2-datepicker';
import 'vue2-datepicker/index.css';

export default {
  components: {
    DatePicker,
  },
  data() {
    return {
      searchTime: {
        month: 'month',
        year: 'year',
        range: 'range',
      },
      typeSearchTime: 'month',
      month: new Date(),
      year: new Date(),
      rangeDate: [new Date(), new Date()],
    }
  },
  methods: {
    onChangeTypeSearchTime() {

    },

    onChangeMonth() {

    },

    onChangeRange() {

    },

    preMonth() {
      this.month = new Date(moment(this.month).subtract(1, 'month'));
    },

    nextMonth() {
      this.month = new Date(moment(this.month).add(1, 'month'));
    },

    isActiveBtnNextMonth() {
      return moment(this.startTime).format('YYYY/MM') == moment().format('YYYY/MM') ? false : true;
    },
  },
}
</script>
