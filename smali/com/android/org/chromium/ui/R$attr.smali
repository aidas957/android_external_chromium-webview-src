.class public final Lcom/android/org/chromium/ui/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static select_dialog_multichoice:I

.field public static select_dialog_singlechoice:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/high16 v0, 0x10000

    sput v0, Lcom/android/org/chromium/ui/R$attr;->select_dialog_multichoice:I

    .line 19
    const v0, 0x10001

    sput v0, Lcom/android/org/chromium/ui/R$attr;->select_dialog_singlechoice:I

    return-void
.end method
