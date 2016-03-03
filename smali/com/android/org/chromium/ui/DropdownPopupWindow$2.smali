.class Lcom/android/org/chromium/ui/DropdownPopupWindow$2;
.super Ljava/lang/Object;
.source "DropdownPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 64
    iput-object p1, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$100(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$100(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$000(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v1}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$200(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$000(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;
    invoke-static {v0}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$300(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/ui/DropdownPopupWindow$2;->this$0:Lcom/android/org/chromium/ui/DropdownPopupWindow;

    # getter for: Lcom/android/org/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/org/chromium/ui/DropdownPopupWindow;->access$000(Lcom/android/org/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;->releaseAnchorView(Landroid/view/View;)V

    .line 73
    return-void
.end method
