const SHOP_GHN_ID=4164988
const SHOP_GHN_DISTRICT_ID=1485

const paymentStatus = [
  { value: 'unpaid', name: 'Chưa thanh toán' },
  { value: 'wait_confirm', name: 'Chờ xác nhận' },
  { value: 'paid', name: 'Đã thanh toán' },
];
const transportStatus = [
  { value: 'wait_confirm', name: 'Chờ xác nhận' },
  { value: 'prepare', name: 'Chuẩn bị hàng' },
  { value: 'transporting', name: 'Đang vận chuyển' },
  { value: 'complete', name: 'Thành công' },
];

export default {
  SHOP_GHN_ID,
  SHOP_GHN_DISTRICT_ID,
  paymentStatus,
  transportStatus,
};
