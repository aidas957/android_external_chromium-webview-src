.class Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Lorg/chromium/android_webview/AwScrollOffsetManager$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwScrollOffsetManagerDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lorg/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lorg/chromium/android_webview/AwContents$1;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;-><init>(Lorg/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public getContainerViewScrollX()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$500(Lorg/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getContainerViewScrollY()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$500(Lorg/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # invokes: Lorg/chromium/android_webview/AwContents;->postInvalidateOnAnimation()V
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$1000(Lorg/chromium/android_webview/AwContents;)V

    .line 488
    return-void
.end method

.method public overScrollContainerViewBy(IIIIIIZ)V
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "isTouchEvent"    # Z

    .prologue
    .line 461
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$600(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;->overScrollBy(IIIIIIIIZ)V

    .line 463
    return-void
.end method

.method public scrollContainerViewTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$600(Lorg/chromium/android_webview/AwContents;)Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;->super_scrollTo(II)V

    .line 468
    return-void
.end method

.method public scrollNativeTo(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # invokes: Lorg/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$700(Lorg/chromium/android_webview/AwContents;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    iget-object v1, p0, Lorg/chromium/android_webview/AwContents$AwScrollOffsetManagerDelegate;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v1}, Lorg/chromium/android_webview/AwContents;->access$800(Lorg/chromium/android_webview/AwContents;)J

    move-result-wide v2

    # invokes: Lorg/chromium/android_webview/AwContents;->nativeScrollTo(JII)V
    invoke-static {v0, v2, v3, p1, p2}, Lorg/chromium/android_webview/AwContents;->access$900(Lorg/chromium/android_webview/AwContents;JII)V

    .line 473
    :cond_0
    return-void
.end method
