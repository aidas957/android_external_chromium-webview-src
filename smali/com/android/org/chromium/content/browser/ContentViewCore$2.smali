.class Lcom/android/org/chromium/content/browser/ContentViewCore$2;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lcom/android/org/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ContentViewCore;->createImeAdapter(Landroid/content/Context;)Lcom/android/org/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$2;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$2;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$200(Lcom/android/org/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 655
    new-instance v0, Lcom/android/org/chromium/content/browser/ContentViewCore$2$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/org/chromium/content/browser/ContentViewCore$2$1;-><init>(Lcom/android/org/chromium/content/browser/ContentViewCore$2;Landroid/os/Handler;)V

    return-object v0
.end method

.method public onDismissInput()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$2;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContentViewClient()Lcom/android/org/chromium/content/browser/ContentViewClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/content/browser/ContentViewClient;->onImeStateChangeRequested(Z)V

    .line 646
    return-void
.end method

.method public onImeEvent()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$2;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lcom/android/org/chromium/content/browser/PopupZoomer;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$700(Lcom/android/org/chromium/content/browser/ContentViewCore;)Lcom/android/org/chromium/content/browser/PopupZoomer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 639
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$2;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContentViewClient()Lcom/android/org/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewClient;->onImeEvent()V

    .line 640
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$2;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$800(Lcom/android/org/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$2;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->dismissTextHandles()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$900(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 641
    :cond_0
    return-void
.end method
