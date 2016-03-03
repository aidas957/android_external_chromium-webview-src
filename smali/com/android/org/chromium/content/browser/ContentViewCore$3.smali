.class Lcom/android/org/chromium/content/browser/ContentViewCore$3;
.super Lcom/android/org/chromium/content/browser/WebContentsObserver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lcom/android/org/chromium/content/browser/ContentViewCore$InternalAccessDelegate;JLcom/android/org/chromium/ui/base/WindowAndroid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/ContentViewCore;Lcom/android/org/chromium/content_public/browser/WebContents;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/org/chromium/content_public/browser/WebContents;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, p2}, Lcom/android/org/chromium/content/browser/WebContentsObserver;-><init>(Lcom/android/org/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private determinedProcessVisibility()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getCurrentRenderProcessId()I

    move-result v0

    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ChildProcessLauncher;->determinedVisibility(I)V

    .line 764
    return-void
.end method


# virtual methods
.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 733
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->determinedProcessVisibility()V

    .line 734
    :cond_0
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z

    .prologue
    .line 739
    if-nez p3, :cond_0

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$1300(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 741
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->resetScrollInProgress()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$1400(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 742
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->resetGestureDetection()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$1500(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->determinedProcessVisibility()V

    .line 756
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 1
    .param p1, "wasOomProtected"    # Z

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$1300(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 748
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->resetScrollInProgress()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$1400(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 751
    return-void
.end method
