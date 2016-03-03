.class Lorg/chromium/android_webview/AwZoomControls;
.super Ljava/lang/Object;
.source "AwZoomControls.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/AwZoomControls$1;,
        Lorg/chromium/android_webview/AwZoomControls$ZoomListener;
    }
.end annotation


# instance fields
.field private mAwContents:Lorg/chromium/android_webview/AwContents;

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContents;)V
    .locals 0
    .param p1, "awContents"    # Lorg/chromium/android_webview/AwContents;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;

    .line 23
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/android_webview/AwZoomControls;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwZoomControls;

    .prologue
    .line 15
    iget-object v0, p0, Lorg/chromium/android_webview/AwZoomControls;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/android_webview/AwZoomControls;)Lorg/chromium/android_webview/AwContents;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwZoomControls;

    .prologue
    .line 15
    iget-object v0, p0, Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;

    return-object v0
.end method

.method private getZoomController()Landroid/widget/ZoomButtonsController;
    .locals 5

    .prologue
    .line 65
    iget-object v2, p0, Lorg/chromium/android_webview/AwZoomControls;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;

    invoke-virtual {v2}, Lorg/chromium/android_webview/AwContents;->getSettings()Lorg/chromium/android_webview/AwSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/android_webview/AwSettings;->shouldDisplayZoomControls()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Landroid/widget/ZoomButtonsController;

    iget-object v3, p0, Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;

    invoke-virtual {v3}, Lorg/chromium/android_webview/AwContents;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/android_webview/AwZoomControls;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 69
    iget-object v2, p0, Lorg/chromium/android_webview/AwZoomControls;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v3, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/chromium/android_webview/AwZoomControls$ZoomListener;-><init>(Lorg/chromium/android_webview/AwZoomControls;Lorg/chromium/android_webview/AwZoomControls$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 73
    iget-object v2, p0, Lorg/chromium/android_webview/AwZoomControls;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "controls":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 75
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 76
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .end local v0    # "controls":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lorg/chromium/android_webview/AwZoomControls;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v2
.end method


# virtual methods
.method public dismissZoomPicker()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/android_webview/AwZoomControls;->getZoomController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    .line 36
    .local v0, "zoomController":Landroid/widget/ZoomButtonsController;
    if-eqz v0, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 39
    :cond_0
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/chromium/android_webview/AwZoomControls;->getZoomController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    .line 28
    .local v0, "zoomController":Landroid/widget/ZoomButtonsController;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 31
    :cond_0
    return-void
.end method

.method public updateZoomControls()V
    .locals 5

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/android_webview/AwZoomControls;->getZoomController()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    .line 44
    .local v2, "zoomController":Landroid/widget/ZoomButtonsController;
    if-nez v2, :cond_0

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v3, p0, Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;

    invoke-virtual {v3}, Lorg/chromium/android_webview/AwContents;->canZoomIn()Z

    move-result v0

    .line 48
    .local v0, "canZoomIn":Z
    iget-object v3, p0, Lorg/chromium/android_webview/AwZoomControls;->mAwContents:Lorg/chromium/android_webview/AwContents;

    invoke-virtual {v3}, Lorg/chromium/android_webview/AwContents;->canZoomOut()Z

    move-result v1

    .line 49
    .local v1, "canZoomOut":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 51
    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method
