.class public final Lcom/android/org/chromium/content/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/R$style;,
        Lcom/android/org/chromium/content/R$string;,
        Lcom/android/org/chromium/content/R$menu;,
        Lcom/android/org/chromium/content/R$layout;,
        Lcom/android/org/chromium/content/R$id;,
        Lcom/android/org/chromium/content/R$drawable;,
        Lcom/android/org/chromium/content/R$dimen;,
        Lcom/android/org/chromium/content/R$color;,
        Lcom/android/org/chromium/content/R$attr;
    }
.end annotation


# direct methods
.method public static onResourcesLoaded(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    .line 194
    sget v0, Lcom/android/org/chromium/content/R$attr;->select_dialog_multichoice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$attr;->select_dialog_multichoice:I

    .line 195
    sget v0, Lcom/android/org/chromium/content/R$attr;->select_dialog_singlechoice:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$attr;->select_dialog_singlechoice:I

    .line 196
    sget v0, Lcom/android/org/chromium/content/R$color;->color_picker_background_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$color;->color_picker_background_color:I

    .line 197
    sget v0, Lcom/android/org/chromium/content/R$color;->color_picker_border_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$color;->color_picker_border_color:I

    .line 198
    sget v0, Lcom/android/org/chromium/content/R$color;->dropdown_dark_divider_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$color;->dropdown_dark_divider_color:I

    .line 199
    sget v0, Lcom/android/org/chromium/content/R$color;->dropdown_divider_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$color;->dropdown_divider_color:I

    .line 200
    sget v0, Lcom/android/org/chromium/content/R$dimen;->color_button_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$dimen;->color_button_height:I

    .line 201
    sget v0, Lcom/android/org/chromium/content/R$dimen;->color_picker_gradient_margin:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$dimen;->color_picker_gradient_margin:I

    .line 202
    sget v0, Lcom/android/org/chromium/content/R$dimen;->config_min_scaling_span:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$dimen;->config_min_scaling_span:I

    .line 203
    sget v0, Lcom/android/org/chromium/content/R$dimen;->config_min_scaling_touch_major:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$dimen;->config_min_scaling_touch_major:I

    .line 204
    sget v0, Lcom/android/org/chromium/content/R$dimen;->dropdown_item_divider_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$dimen;->dropdown_item_divider_height:I

    .line 205
    sget v0, Lcom/android/org/chromium/content/R$dimen;->dropdown_item_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$dimen;->dropdown_item_height:I

    .line 206
    sget v0, Lcom/android/org/chromium/content/R$dimen;->link_preview_overlay_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$dimen;->link_preview_overlay_radius:I

    .line 207
    sget v0, Lcom/android/org/chromium/content/R$drawable;->bubble:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->bubble:I

    .line 208
    sget v0, Lcom/android/org/chromium/content/R$drawable;->bubble_arrow_up:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->bubble_arrow_up:I

    .line 209
    sget v0, Lcom/android/org/chromium/content/R$drawable;->color_button_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->color_button_background:I

    .line 210
    sget v0, Lcom/android/org/chromium/content/R$drawable;->color_picker_advanced_select_handle:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->color_picker_advanced_select_handle:I

    .line 211
    sget v0, Lcom/android/org/chromium/content/R$drawable;->color_picker_border:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->color_picker_border:I

    .line 212
    sget v0, Lcom/android/org/chromium/content/R$drawable;->dropdown_popup_background:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->dropdown_popup_background:I

    .line 213
    sget v0, Lcom/android/org/chromium/content/R$drawable;->dropdown_popup_background_down:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->dropdown_popup_background_down:I

    .line 214
    sget v0, Lcom/android/org/chromium/content/R$drawable;->dropdown_popup_background_up:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->dropdown_popup_background_up:I

    .line 215
    sget v0, Lcom/android/org/chromium/content/R$drawable;->ic_media_video_poster:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->ic_media_video_poster:I

    .line 216
    sget v0, Lcom/android/org/chromium/content/R$drawable;->ic_menu_search_holo_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->ic_menu_search_holo_light:I

    .line 217
    sget v0, Lcom/android/org/chromium/content/R$drawable;->ic_menu_share_holo_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->ic_menu_share_holo_light:I

    .line 218
    sget v0, Lcom/android/org/chromium/content/R$drawable;->icon_webview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->icon_webview:I

    .line 219
    sget v0, Lcom/android/org/chromium/content/R$drawable;->ondemand_overlay:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->ondemand_overlay:I

    .line 220
    sget v0, Lcom/android/org/chromium/content/R$drawable;->pageinfo_warning_major:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$drawable;->pageinfo_warning_major:I

    .line 221
    sget v0, Lcom/android/org/chromium/content/R$id;->ampm:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->ampm:I

    .line 222
    sget v0, Lcom/android/org/chromium/content/R$id;->arrow_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->arrow_image:I

    .line 223
    sget v0, Lcom/android/org/chromium/content/R$id;->color_button_swatch:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->color_button_swatch:I

    .line 224
    sget v0, Lcom/android/org/chromium/content/R$id;->color_picker_advanced:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->color_picker_advanced:I

    .line 225
    sget v0, Lcom/android/org/chromium/content/R$id;->color_picker_simple:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->color_picker_simple:I

    .line 226
    sget v0, Lcom/android/org/chromium/content/R$id;->date_picker:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->date_picker:I

    .line 227
    sget v0, Lcom/android/org/chromium/content/R$id;->date_time_suggestion:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->date_time_suggestion:I

    .line 228
    sget v0, Lcom/android/org/chromium/content/R$id;->date_time_suggestion_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->date_time_suggestion_label:I

    .line 229
    sget v0, Lcom/android/org/chromium/content/R$id;->date_time_suggestion_value:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->date_time_suggestion_value:I

    .line 230
    sget v0, Lcom/android/org/chromium/content/R$id;->dropdown_icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->dropdown_icon:I

    .line 231
    sget v0, Lcom/android/org/chromium/content/R$id;->dropdown_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->dropdown_label:I

    .line 232
    sget v0, Lcom/android/org/chromium/content/R$id;->dropdown_label_wrapper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->dropdown_label_wrapper:I

    .line 233
    sget v0, Lcom/android/org/chromium/content/R$id;->dropdown_popup_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->dropdown_popup_window:I

    .line 234
    sget v0, Lcom/android/org/chromium/content/R$id;->dropdown_sublabel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->dropdown_sublabel:I

    .line 235
    sget v0, Lcom/android/org/chromium/content/R$id;->gradient:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->gradient:I

    .line 236
    sget v0, Lcom/android/org/chromium/content/R$id;->gradient_border:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->gradient_border:I

    .line 237
    sget v0, Lcom/android/org/chromium/content/R$id;->hour:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->hour:I

    .line 238
    sget v0, Lcom/android/org/chromium/content/R$id;->icon_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->icon_view:I

    .line 239
    sget v0, Lcom/android/org/chromium/content/R$id;->main_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->main_text:I

    .line 240
    sget v0, Lcom/android/org/chromium/content/R$id;->milli:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->milli:I

    .line 241
    sget v0, Lcom/android/org/chromium/content/R$id;->minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->minute:I

    .line 242
    sget v0, Lcom/android/org/chromium/content/R$id;->more_colors_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->more_colors_button:I

    .line 243
    sget v0, Lcom/android/org/chromium/content/R$id;->more_colors_button_border:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->more_colors_button_border:I

    .line 244
    sget v0, Lcom/android/org/chromium/content/R$id;->pickers:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->pickers:I

    .line 245
    sget v0, Lcom/android/org/chromium/content/R$id;->position_in_year:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->position_in_year:I

    .line 246
    sget v0, Lcom/android/org/chromium/content/R$id;->second:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->second:I

    .line 247
    sget v0, Lcom/android/org/chromium/content/R$id;->second_colon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->second_colon:I

    .line 248
    sget v0, Lcom/android/org/chromium/content/R$id;->second_dot:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->second_dot:I

    .line 249
    sget v0, Lcom/android/org/chromium/content/R$id;->seek_bar:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->seek_bar:I

    .line 250
    sget v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_copy:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_copy:I

    .line 251
    sget v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_cut:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_cut:I

    .line 252
    sget v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_paste:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_paste:I

    .line 253
    sget v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_select_all:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_select_all:I

    .line 254
    sget v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_share:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_share:I

    .line 255
    sget v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_web_search:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->select_action_menu_web_search:I

    .line 256
    sget v0, Lcom/android/org/chromium/content/R$id;->selected_color_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->selected_color_view:I

    .line 257
    sget v0, Lcom/android/org/chromium/content/R$id;->selected_color_view_border:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->selected_color_view_border:I

    .line 258
    sget v0, Lcom/android/org/chromium/content/R$id;->sub_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->sub_text:I

    .line 259
    sget v0, Lcom/android/org/chromium/content/R$id;->text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->text:I

    .line 260
    sget v0, Lcom/android/org/chromium/content/R$id;->text_wrapper:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->text_wrapper:I

    .line 261
    sget v0, Lcom/android/org/chromium/content/R$id;->time_picker:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->time_picker:I

    .line 262
    sget v0, Lcom/android/org/chromium/content/R$id;->title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->title:I

    .line 263
    sget v0, Lcom/android/org/chromium/content/R$id;->top_view:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->top_view:I

    .line 264
    sget v0, Lcom/android/org/chromium/content/R$id;->year:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$id;->year:I

    .line 265
    sget v0, Lcom/android/org/chromium/content/R$layout;->color_picker_advanced_component:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->color_picker_advanced_component:I

    .line 266
    sget v0, Lcom/android/org/chromium/content/R$layout;->color_picker_dialog_content:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->color_picker_dialog_content:I

    .line 267
    sget v0, Lcom/android/org/chromium/content/R$layout;->color_picker_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->color_picker_dialog_title:I

    .line 268
    sget v0, Lcom/android/org/chromium/content/R$layout;->date_time_picker_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->date_time_picker_dialog:I

    .line 269
    sget v0, Lcom/android/org/chromium/content/R$layout;->date_time_suggestion:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->date_time_suggestion:I

    .line 270
    sget v0, Lcom/android/org/chromium/content/R$layout;->dropdown_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->dropdown_item:I

    .line 271
    sget v0, Lcom/android/org/chromium/content/R$layout;->multi_field_time_picker_dialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->multi_field_time_picker_dialog:I

    .line 272
    sget v0, Lcom/android/org/chromium/content/R$layout;->two_field_date_picker:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->two_field_date_picker:I

    .line 273
    sget v0, Lcom/android/org/chromium/content/R$layout;->validation_message_bubble:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$layout;->validation_message_bubble:I

    .line 274
    sget v0, Lcom/android/org/chromium/content/R$menu;->select_action_menu:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$menu;->select_action_menu:I

    .line 275
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_date_picker_month:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_date_picker_month:I

    .line 276
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_date_picker_week:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_date_picker_week:I

    .line 277
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_date_picker_year:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_date_picker_year:I

    .line 278
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_datetime_picker_date:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_datetime_picker_date:I

    .line 279
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_datetime_picker_time:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_datetime_picker_time:I

    .line 280
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_ampm:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_ampm:I

    .line 281
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_hour:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_hour:I

    .line 282
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_milli:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_milli:I

    .line 283
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_minute:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_minute:I

    .line 284
    sget v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_second:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->accessibility_time_picker_second:I

    .line 285
    sget v0, Lcom/android/org/chromium/content/R$string;->actionbar_share:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->actionbar_share:I

    .line 286
    sget v0, Lcom/android/org/chromium/content/R$string;->actionbar_web_search:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->actionbar_web_search:I

    .line 287
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_black:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_black:I

    .line 288
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_blue:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_blue:I

    .line 289
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_cancel:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_cancel:I

    .line 290
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_cyan:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_cyan:I

    .line 291
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_green:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_green:I

    .line 292
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_magenta:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_magenta:I

    .line 293
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_more:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_more:I

    .line 294
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_red:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_red:I

    .line 295
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_set:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_set:I

    .line 296
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_white:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_white:I

    .line 297
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_yellow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_button_yellow:I

    .line 298
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_dialog_title:I

    .line 299
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_hue:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_hue:I

    .line 300
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_saturation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_saturation:I

    .line 301
    sget v0, Lcom/android/org/chromium/content/R$string;->color_picker_value:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->color_picker_value:I

    .line 302
    sget v0, Lcom/android/org/chromium/content/R$string;->copy_to_clipboard_failure_message:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->copy_to_clipboard_failure_message:I

    .line 303
    sget v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_clear:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_clear:I

    .line 304
    sget v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_other_button_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_other_button_label:I

    .line 305
    sget v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_set:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_set:I

    .line 306
    sget v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->date_picker_dialog_title:I

    .line 307
    sget v0, Lcom/android/org/chromium/content/R$string;->date_time_picker_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->date_time_picker_dialog_title:I

    .line 308
    sget v0, Lcom/android/org/chromium/content/R$string;->low_memory_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->low_memory_error:I

    .line 309
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->media_player_error_button:I

    .line 310
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_text_invalid_progressive_playback:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->media_player_error_text_invalid_progressive_playback:I

    .line 311
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_text_unknown:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->media_player_error_text_unknown:I

    .line 312
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->media_player_error_title:I

    .line 313
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_loading_video:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->media_player_loading_video:I

    .line 314
    sget v0, Lcom/android/org/chromium/content/R$string;->month_picker_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->month_picker_dialog_title:I

    .line 315
    sget v0, Lcom/android/org/chromium/content/R$string;->opening_file_error:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->opening_file_error:I

    .line 316
    sget v0, Lcom/android/org/chromium/content/R$string;->private_browsing_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->private_browsing_warning:I

    .line 317
    sget v0, Lcom/android/org/chromium/content/R$string;->profiler_error_toast:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->profiler_error_toast:I

    .line 318
    sget v0, Lcom/android/org/chromium/content/R$string;->profiler_no_storage_toast:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->profiler_no_storage_toast:I

    .line 319
    sget v0, Lcom/android/org/chromium/content/R$string;->profiler_started_toast:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->profiler_started_toast:I

    .line 320
    sget v0, Lcom/android/org/chromium/content/R$string;->profiler_stopped_toast:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->profiler_stopped_toast:I

    .line 321
    sget v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_am:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_am:I

    .line 322
    sget v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_hour_minute_separator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_hour_minute_separator:I

    .line 323
    sget v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_minute_second_separator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_minute_second_separator:I

    .line 324
    sget v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_pm:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_pm:I

    .line 325
    sget v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_second_subsecond_separator:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_second_subsecond_separator:I

    .line 326
    sget v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->time_picker_dialog_title:I

    .line 327
    sget v0, Lcom/android/org/chromium/content/R$string;->webviewchromium_license_activity_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->webviewchromium_license_activity_title:I

    .line 328
    sget v0, Lcom/android/org/chromium/content/R$string;->webviewchromium_private_browsing_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->webviewchromium_private_browsing_warning:I

    .line 329
    sget v0, Lcom/android/org/chromium/content/R$string;->week_picker_dialog_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$string;->week_picker_dialog_title:I

    .line 330
    sget v0, Lcom/android/org/chromium/content/R$style;->DropdownPopupWindow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$style;->DropdownPopupWindow:I

    .line 331
    sget v0, Lcom/android/org/chromium/content/R$style;->SelectActionMenuShare:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$style;->SelectActionMenuShare:I

    .line 332
    sget v0, Lcom/android/org/chromium/content/R$style;->SelectActionMenuWebSearch:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$style;->SelectActionMenuWebSearch:I

    .line 333
    sget v0, Lcom/android/org/chromium/content/R$style;->SelectPopupDialog:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/android/org/chromium/content/R$style;->SelectPopupDialog:I

    .line 334
    return-void
.end method
