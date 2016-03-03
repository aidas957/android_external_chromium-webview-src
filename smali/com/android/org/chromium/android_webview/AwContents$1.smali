.class Lcom/android/org/chromium/android_webview/AwContents$1;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Lcom/android/org/chromium/android_webview/AwSettings$ZoomSupportChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContents;-><init>(Lcom/android/org/chromium/android_webview/AwBrowserContext;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;Lcom/android/org/chromium/android_webview/AwContents$NativeGLDelegate;Lcom/android/org/chromium/android_webview/AwContentsClient;Lcom/android/org/chromium/android_webview/AwSettings;Lcom/android/org/chromium/android_webview/AwContents$DependencyFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$1;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureZoomSupportChanged(ZZ)V
    .locals 1
    .param p1, "supportsDoubleTapZoom"    # Z
    .param p2, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$1;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$1;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->updateDoubleTapSupport(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$1;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->updateMultiTouchZoomSupport(Z)V

    goto :goto_0
.end method
