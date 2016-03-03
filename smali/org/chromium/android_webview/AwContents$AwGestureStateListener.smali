.class Lorg/chromium/android_webview/AwContents$AwGestureStateListener;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "AwContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwGestureStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lorg/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;->this$0:Lorg/chromium/android_webview/AwContents;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lorg/chromium/android_webview/AwContents$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;-><init>(Lorg/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public onFlingCancelGesture()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$1200(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwScrollOffsetManager;->onFlingCancelGesture()V

    .line 512
    return-void
.end method

.method public onPinchEnded()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$1100(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwLayoutSizer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwLayoutSizer;->unfreezeLayoutRequests()V

    .line 507
    return-void
.end method

.method public onPinchStarted()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mLayoutSizer:Lorg/chromium/android_webview/AwLayoutSizer;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$1100(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwLayoutSizer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwLayoutSizer;->freezeLayoutRequests()V

    .line 502
    return-void
.end method

.method public onScrollUpdateGestureConsumed()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mScrollAccessibilityHelper:Lorg/chromium/android_webview/ScrollAccessibilityHelper;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$1300(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/ScrollAccessibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/ScrollAccessibilityHelper;->postViewScrolledAccessibilityEventCallback()V

    .line 522
    return-void
.end method

.method public onUnhandledFlingStartEvent(II)V
    .locals 1
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwGestureStateListener;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mScrollOffsetManager:Lorg/chromium/android_webview/AwScrollOffsetManager;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$1200(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwScrollOffsetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwScrollOffsetManager;->onUnhandledFlingStartEvent(II)V

    .line 517
    return-void
.end method
