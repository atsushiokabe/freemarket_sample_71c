/*
 * Translated default messages for the jQuery validation plugin.
 * Locale: JA (Japanese; 日本語)
 */
$.extend( $.validator.messages, {
	required: "このフィールドは必須です。",
	remote: "このフィールドを修正してください。",
	email: "有効なEメールアドレスを入力してください。",
	url: "有効なURLを入力してください。",
	date: "有効な日付を入力してください。",
	dateISO: "有効な日付（ISO）を入力してください。",
	number: "有効な数字を入力してください。",
	digits: "数字のみを入力してください。",
	creditcard: "有効なクレジットカード番号を入力してください。",
	equalTo: "同じ値をもう一度入力してください。",
	first_name: "全角で入力してください",
	first_name_kana: "全角（カナ）で入力してください",
	zipcode: "ハイフンありの7桁で入力してください",
	name: "40文字以内で入力してください。",
	description: "1000文字以内で入力してください。",
	category_id: "選択してください",
	size_id: "選択してください。",
	condition_id: "選択してください",
	delivery_fee_id: "選択してください",
	shipping_method_id: "選択してください",
	ship_from_area_id: "選択してください",
	shipping_day_id: "選択してください",
	price: "300以上9999999以下で入力してください",
	extension: "有効な拡張子を含む値を入力してください。",
	maxlength: $.validator.format( "{0} 文字以内で入力してください。" ),
	minlength: $.validator.format( "{0} 文字以上で入力してください。" ),
	rangelength: $.validator.format( "{0} 文字から {1} 文字までの値を入力してください。" ),
	range: $.validator.format( "{0} から {1} までの値を入力してください。" ),
	step: $.validator.format( "{0} の倍数を入力してください。" ),
	max: $.validator.format( "{0} 以下の値を入力してください。" ),
	min: $.validator.format( "{0} 以上の値を入力してください。" )
} );
