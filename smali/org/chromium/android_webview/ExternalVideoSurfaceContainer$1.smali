.class Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;
.super Lorg/chromium/content/browser/ContainerViewObserver;
.source "ExternalVideoSurfaceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->createSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;->this$0:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    invoke-direct {p0}, Lorg/chromium/content/browser/ContainerViewObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerViewChanged(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "newContainerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;->this$0:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    # getter for: Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->access$100(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;->this$0:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    # getter for: Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->access$000(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;->this$0:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    # setter for: Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0, p1}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->access$102(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 193
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;->this$0:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    # getter for: Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->access$100(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;->this$0:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    # getter for: Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->access$000(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    return-void
.end method
