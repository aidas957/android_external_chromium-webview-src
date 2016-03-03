.class public final Lwebview/chromium/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwebview/chromium/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field public static select_action_menu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/high16 v0, 0x90000

    sput v0, Lwebview/chromium/R$menu;->select_action_menu:I

    return-void
.end method
