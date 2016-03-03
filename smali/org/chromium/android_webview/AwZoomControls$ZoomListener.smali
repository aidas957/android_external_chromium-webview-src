.class Lorg/chromium/android_webview/AwZoomControls$ZoomListener;
.super Ljava/lang/Object;
.source "AwZoomControls.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwZoomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwZoomControls;


# direct methods
.method private constructor <init>(Lorg/chromium/android_webview/AwZoomControls;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;->this$0:Lorg/chromium/android_webview/AwZoomControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/android_webview/AwZoomControls;Lorg/chromium/android_webview/AwZoomControls$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/android_webview/AwZoomControls;
    .param p2, "x1"    # Lorg/chromium/android_webview/AwZoomControls$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;-><init>(Lorg/chromium/android_webview/AwZoomControls;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;->this$0:Lorg/chromium/android_webview/AwZoomControls;

    # getter for: Lorg/chromium/android_webview/AwZoomControls;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Lorg/chromium/android_webview/AwZoomControls;->access$100(Lorg/chromium/android_webview/AwZoomControls;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;->this$0:Lorg/chromium/android_webview/AwZoomControls;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwZoomControls;->updateZoomControls()V

    .line 90
    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 1
    .param p1, "zoomIn"    # Z

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;->this$0:Lorg/chromium/android_webview/AwZoomControls;

    # getter for: Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;
    invoke-static {v0}, Lorg/chromium/android_webview/AwZoomControls;->access$200(Lorg/chromium/android_webview/AwZoomControls;)Lorg/chromium/android_webview/AwContents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContents;->zoomIn()Z

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;->this$0:Lorg/chromium/android_webview/AwZoomControls;

    # getter for: Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;
    invoke-static {v0}, Lorg/chromium/android_webview/AwZoomControls;->access$200(Lorg/chromium/android_webview/AwZoomControls;)Lorg/chromium/android_webview/AwContents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContents;->zoomOut()Z

    goto :goto_0
.end method
