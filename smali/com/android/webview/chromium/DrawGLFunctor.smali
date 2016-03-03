.class Lcom/android/webview/chromium/DrawGLFunctor;
.super Ljava/lang/Object;
.source "DrawGLFunctor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCleanupReference:Lcom/android/org/chromium/content/common/CleanupReference;

.field mContainerView:Landroid/view/View;

.field private mDestroyRunnable:Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

.field private final mNativeDrawGLFunctor:J

.field private mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/webview/chromium/DrawGLFunctor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/webview/chromium/DrawGLFunctor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;)V
    .locals 5
    .param p1, "viewContext"    # J
    .param p3, "webViewDelegate"    # Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1, p2}, Lcom/android/webview/chromium/DrawGLFunctor;->nativeCreateGLFunctor(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mNativeDrawGLFunctor:J

    .line 45
    new-instance v0, Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

    iget-wide v2, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mNativeDrawGLFunctor:J

    invoke-direct {v0, v2, v3}, Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;-><init>(J)V

    iput-object v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mDestroyRunnable:Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

    .line 46
    new-instance v0, Lcom/android/org/chromium/content/common/CleanupReference;

    iget-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mDestroyRunnable:Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/org/chromium/content/common/CleanupReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mCleanupReference:Lcom/android/org/chromium/content/common/CleanupReference;

    .line 47
    iput-object p3, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    .line 48
    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/android/webview/chromium/DrawGLFunctor;->nativeDestroyGLFunctor(J)V

    return-void
.end method

.method private static native nativeCreateGLFunctor(J)J
.end method

.method private static native nativeDestroyGLFunctor(J)V
.end method

.method private static native nativeSetChromiumAwDrawGLFunction(J)V
.end method

.method public static setChromiumAwDrawGLFunction(J)V
    .locals 0
    .param p0, "functionPointer"    # J

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/webview/chromium/DrawGLFunctor;->nativeSetChromiumAwDrawGLFunction(J)V

    .line 95
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/android/webview/chromium/DrawGLFunctor;->detach()V

    .line 52
    iget-object v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mCleanupReference:Lcom/android/org/chromium/content/common/CleanupReference;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mCleanupReference:Lcom/android/org/chromium/content/common/CleanupReference;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/common/CleanupReference;->cleanupNow()V

    .line 54
    iput-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mCleanupReference:Lcom/android/org/chromium/content/common/CleanupReference;

    .line 55
    iput-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mDestroyRunnable:Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

    .line 56
    iput-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    .line 57
    iput-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mContainerView:Landroid/view/View;

    .line 59
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    iget-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mContainerView:Landroid/view/View;

    iget-wide v2, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mNativeDrawGLFunctor:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->detachDrawGlFunctor(Landroid/view/View;J)V

    .line 65
    :cond_0
    return-void
.end method

.method public requestDrawGL(Landroid/graphics/Canvas;Landroid/view/View;Z)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "containerView"    # Landroid/view/View;
    .param p3, "waitForCompletion"    # Z

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mDestroyRunnable:Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

    # getter for: Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J
    invoke-static {v1}, Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;->access$000(Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "requested DrawGL on already destroyed DrawGLFunctor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requested a blocking DrawGL with a not null canvas."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    invoke-interface {v1, p2}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->canInvokeDrawGlFunctor(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 81
    :cond_2
    iput-object p2, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mContainerView:Landroid/view/View;

    .line 83
    if-nez p1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    iget-object v2, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mDestroyRunnable:Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

    # getter for: Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J
    invoke-static {v2}, Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;->access$000(Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;)J

    move-result-wide v2

    invoke-interface {v1, p2, v2, v3, p3}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->invokeDrawGlFunctor(Landroid/view/View;JZ)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    iget-object v2, p0, Lcom/android/webview/chromium/DrawGLFunctor;->mDestroyRunnable:Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;

    # getter for: Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;->mNativeDrawGLFunctor:J
    invoke-static {v2}, Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;->access$000(Lcom/android/webview/chromium/DrawGLFunctor$DestroyRunnable;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->callDrawGlFunction(Landroid/graphics/Canvas;J)V

    goto :goto_0
.end method
