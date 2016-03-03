.class public final Lorg/chromium/content/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static DropdownPopupWindow:I

.field public static SelectActionMenuShare:I

.field public static SelectActionMenuWebSearch:I

.field public static SelectPopupDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const/high16 v0, 0x70000

    sput v0, Lorg/chromium/content/R$style;->DropdownPopupWindow:I

    .line 189
    const v0, 0x70002

    sput v0, Lorg/chromium/content/R$style;->SelectActionMenuShare:I

    .line 190
    const v0, 0x70003

    sput v0, Lorg/chromium/content/R$style;->SelectActionMenuWebSearch:I

    .line 191
    const v0, 0x70001

    sput v0, Lorg/chromium/content/R$style;->SelectPopupDialog:I

    return-void
.end method
