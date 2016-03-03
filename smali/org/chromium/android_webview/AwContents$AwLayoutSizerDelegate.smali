.class Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Lorg/chromium/android_webview/AwLayoutSizer$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwLayoutSizerDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lorg/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lorg/chromium/android_webview/AwContents$1;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;-><init>(Lorg/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public isLayoutParamsHeightWrapContent()Z
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$500(Lorg/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$500(Lorg/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$500(Lorg/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 436
    return-void
.end method

.method public setForceZeroLayoutHeight(Z)V
    .locals 1
    .param p1, "forceZeroHeight"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContents;->getSettings()Lorg/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/android_webview/AwSettings;->setForceZeroLayoutHeight(Z)V

    .line 453
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwLayoutSizerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$600(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;->setMeasuredDimension(II)V

    .line 441
    return-void
.end method
