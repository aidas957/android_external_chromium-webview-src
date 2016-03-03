.class Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Lcom/android/org/chromium/android_webview/AwViewMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwViewMethodsImpl"
.end annotation


# instance fields
.field private final mClipBoundsTemporary:Landroid/graphics/Rect;

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks2;

.field private mLayerType:I

.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;)V
    .locals 1

    .prologue
    .line 2322
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mLayerType:I

    .line 2327
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mClipBoundsTemporary:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Lcom/android/org/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lcom/android/org/chromium/android_webview/AwContents$1;

    .prologue
    .line 2322
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;-><init>(Lcom/android/org/chromium/android_webview/AwContents;)V

    return-void
.end method

.method private isDpadEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2409
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2410
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2419
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2416
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2410
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateHardwareAcceleratedFeaturesToggle()V
    .locals 3

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v1

    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$4700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mLayerType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mLayerType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/org/chromium/android_webview/AwSettings;->setEnableSupportedHardwareAcceleratedFeatures(Z)V

    .line 2387
    return-void

    .line 2383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeScrollAndAbsorbGlow(Lcom/android/org/chromium/android_webview/OverScrollGlow;)V

    .line 2607
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2405
    :goto_0
    return v0

    .line 2402
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->isDpadEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2403
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwSettings;->setSpatialNavigationEnabled(Z)V

    .line 2405
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2474
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$4700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2475
    const-string v0, "AwContents"

    const-string v1, "onAttachedToWindow called when already attached. Ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2478
    :cond_2
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    const/4 v1, 0x1

    # setter for: Lcom/android/org/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z
    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$4702(Lcom/android/org/chromium/android_webview/AwContents;Z)Z

    .line 2480
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onAttachedToWindow()V

    .line 2481
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeOnAttachedToWindow(JII)V
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/org/chromium/android_webview/AwContents;->access$5000(Lcom/android/org/chromium/android_webview/AwContents;JII)V

    .line 2483
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->updateHardwareAcceleratedFeaturesToggle()V

    .line 2485
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-nez v0, :cond_0

    .line 2486
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContents$AwComponentCallbacks;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/chromium/android_webview/AwContents$AwComponentCallbacks;-><init>(Lcom/android/org/chromium/android_webview/AwContents;Lcom/android/org/chromium/android_webview/AwContents$1;)V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    .line 2487
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$5200(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2469
    :cond_0
    return-void
.end method

.method public onContainerViewOverScrolled(IIZZ)V
    .locals 7
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 2567
    .local v3, "oldX":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 2569
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->onContainerViewOverScrolled(IIZZ)V

    .line 2571
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    iget-object v5, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v5}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumHorizontalScrollOffset()I

    move-result v5

    iget-object v6, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v6}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/chromium/android_webview/OverScrollGlow;->pullGlow(IIIIII)V

    .line 2577
    :cond_0
    return-void
.end method

.method public onContainerViewScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollAccessibilityHelper:Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->removePostedViewScrolledAccessibilityEventCallback()V

    .line 2560
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->onContainerViewScrollChanged(II)V

    .line 2561
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2510
    :goto_0
    return-void

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$4700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2494
    const-string v0, "AwContents"

    const-string v1, "onDetachedFromWindow called when already detached. Ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2497
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    const/4 v1, 0x0

    # setter for: Lcom/android/org/chromium/android_webview/AwContents;->mIsAttachedToWindow:Z
    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$4702(Lcom/android/org/chromium/android_webview/AwContents;Z)Z

    .line 2498
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->hideAutofillPopup()V

    .line 2499
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v0

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeOnDetachedFromWindow(J)V
    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$5300(J)V

    .line 2501
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onDetachedFromWindow()V

    .line 2502
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->updateHardwareAcceleratedFeaturesToggle()V

    .line 2504
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_2

    .line 2505
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$5200(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 2506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    .line 2509
    :cond_2
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollAccessibilityHelper:Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/ScrollAccessibilityHelper;->removePostedCallbacks()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2332
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getEffectiveBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2361
    :cond_0
    :goto_0
    return-void

    .line 2338
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mClipBoundsTemporary:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2342
    :cond_2
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->syncScrollOffsetFromOnDraw()V

    .line 2343
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->getGlobalVisibleRect()Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$1400(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/graphics/Rect;

    move-result-object v12

    .line 2344
    .local v12, "globalVisibleRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    iget-object v4, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    iget-object v4, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v7

    iget v8, v12, Landroid/graphics/Rect;->left:I

    iget v9, v12, Landroid/graphics/Rect;->top:I

    iget v10, v12, Landroid/graphics/Rect;->right:I

    iget v11, v12, Landroid/graphics/Rect;->bottom:I

    move-object v4, p1

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeOnDraw(JLandroid/graphics/Canvas;ZIIIIII)Z
    invoke-static/range {v1 .. v11}, Lcom/android/org/chromium/android_webview/AwContents;->access$4300(Lcom/android/org/chromium/android_webview/AwContents;JLandroid/graphics/Canvas;ZIIIIII)Z

    move-result v0

    .line 2349
    .local v0, "did_draw":Z
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2350
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeGLDelegate:Lcom/android/org/chromium/android_webview/AwContents$NativeGLDelegate;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$4400(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContents$NativeGLDelegate;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/org/chromium/android_webview/AwContents$NativeGLDelegate;->requestDrawGL(Landroid/graphics/Canvas;ZLandroid/view/View;)Z

    move-result v0

    .line 2352
    :cond_3
    if-nez v0, :cond_4

    .line 2353
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getEffectiveBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2356
    :cond_4
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumHorizontalScrollOffset()I

    move-result v2

    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumVerticalScrollOffset()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/org/chromium/android_webview/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2359
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->postInvalidateOnAnimation()V
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$1000(Lcom/android/org/chromium/android_webview/AwContents;)V

    goto/16 :goto_0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    :goto_0
    return-void

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # setter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerViewFocused:Z
    invoke-static {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->access$5502(Lcom/android/org/chromium/android_webview/AwContents;Z)Z

    .line 2523
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onFocusChanged(Z)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mLayoutSizer:Lcom/android/org/chromium/android_webview/AwLayoutSizer;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwLayoutSizer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwLayoutSizer;->onMeasure(II)V

    .line 2366
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2538
    :goto_0
    return-void

    .line 2529
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->setContainerViewSize(II)V

    .line 2534
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mLayoutSizer:Lcom/android/org/chromium/android_webview/AwLayoutSizer;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwLayoutSizer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwLayoutSizer;->onSizeChanged(IIII)V

    .line 2535
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onPhysicalBackingSizeChanged(II)V

    .line 2536
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onSizeChanged(IIII)V

    .line 2537
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeOnSizeChanged(JIIII)V
    invoke-static/range {v1 .. v7}, Lcom/android/org/chromium/android_webview/AwContents;->access$5600(Lcom/android/org/chromium/android_webview/AwContents;JIIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 2424
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 2453
    :cond_0
    :goto_0
    return v1

    .line 2425
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_2

    .line 2426
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/org/chromium/android_webview/AwSettings;->setSpatialNavigationEnabled(Z)V

    .line 2429
    :cond_2
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->setProcessingTouchEvent(Z)V

    .line 2430
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2431
    .local v1, "rv":Z
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mScrollOffsetManager:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$1200(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->setProcessingTouchEvent(Z)V

    .line 2433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_3

    .line 2434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2438
    .local v0, "actionIndex":I
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v4, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v4}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mDIPScale:D
    invoke-static {v8}, Lcom/android/org/chromium/android_webview/AwContents;->access$4800(Lcom/android/org/chromium/android_webview/AwContents;)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-double v8, v7

    iget-object v7, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mDIPScale:D
    invoke-static {v7}, Lcom/android/org/chromium/android_webview/AwContents;->access$4800(Lcom/android/org/chromium/android_webview/AwContents;)D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v7, v8

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeRequestNewHitTestDataAt(JII)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/org/chromium/android_webview/AwContents;->access$4900(Lcom/android/org/chromium/android_webview/AwContents;JII)V

    .line 2443
    .end local v0    # "actionIndex":I
    :cond_3
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_4

    .line 2445
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/org/chromium/android_webview/OverScrollGlow;->setShouldPull(Z)V

    goto :goto_0

    .line 2446
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v12, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2448
    :cond_5
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/org/chromium/android_webview/OverScrollGlow;->setShouldPull(Z)V

    .line 2449
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mOverScrollGlow:Lcom/android/org/chromium/android_webview/OverScrollGlow;
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$4500(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/OverScrollGlow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/OverScrollGlow;->releaseAll()V

    goto/16 :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2542
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2543
    .local v0, "viewVisible":Z
    :goto_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mIsViewVisible:Z
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$1500(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2545
    :goto_1
    return-void

    .line 2542
    .end local v0    # "viewVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2544
    .restart local v0    # "viewVisible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->setViewVisibilityInternal(Z)V
    invoke-static {v1, v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$5700(Lcom/android/org/chromium/android_webview/AwContents;Z)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    :goto_0
    return-void

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # setter for: Lcom/android/org/chromium/android_webview/AwContents;->mWindowFocused:Z
    invoke-static {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->access$5402(Lcom/android/org/chromium/android_webview/AwContents;Z)Z

    .line 2516
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$2300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2549
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 2550
    .local v0, "windowVisible":Z
    :goto_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mIsWindowVisible:Z
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$1600(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2552
    :goto_1
    return-void

    .line 2549
    .end local v0    # "windowVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2551
    .restart local v0    # "windowVisible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->setWindowVisibilityInternal(Z)V
    invoke-static {v1, v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$5800(Lcom/android/org/chromium/android_webview/AwContents;Z)V

    goto :goto_1
.end method

.method public requestFocus()V
    .locals 4

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$700(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2371
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mSettings:Lcom/android/org/chromium/android_webview/AwSettings;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwSettings;->shouldFocusFirstNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwContents;->access$800(Lcom/android/org/chromium/android_webview/AwContents;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/android_webview/AwContents;->nativeFocusFirstNode(J)V
    invoke-static {v0, v2, v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$4600(Lcom/android/org/chromium/android_webview/AwContents;J)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2378
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->mLayerType:I

    .line 2379
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$AwViewMethodsImpl;->updateHardwareAcceleratedFeaturesToggle()V

    .line 2380
    return-void
.end method
