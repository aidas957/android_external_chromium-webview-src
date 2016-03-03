.class public final Lcom/android/webview/chromium/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/webview/chromium/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static color_picker_background_color:I

.field public static color_picker_border_color:I

.field public static dropdown_dark_divider_color:I

.field public static dropdown_divider_color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const v0, 0x50001

    sput v0, Lcom/android/webview/chromium/R$color;->color_picker_background_color:I

    .line 23
    const/high16 v0, 0x50000

    sput v0, Lcom/android/webview/chromium/R$color;->color_picker_border_color:I

    .line 24
    const v0, 0x50003

    sput v0, Lcom/android/webview/chromium/R$color;->dropdown_dark_divider_color:I

    .line 25
    const v0, 0x50002

    sput v0, Lcom/android/webview/chromium/R$color;->dropdown_divider_color:I

    return-void
.end method
