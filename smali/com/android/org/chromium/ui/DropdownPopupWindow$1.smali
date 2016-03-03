.class Lcom/android/org/chromium/ui/DropdownPopupWindow$1;
.super Ljava/lang/Object;
.source "DropdownPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/ui/DropdownPopupWindow;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$1;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$1;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$000(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$1;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->show()V

    .line 60
    :cond_0
    return-void
.end method
