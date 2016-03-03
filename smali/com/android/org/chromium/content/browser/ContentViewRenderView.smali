.class public Lcom/android/org/chromium/content/browser/ContentViewRenderView;
.super Landroid/widget/FrameLayout;
.source "ContentViewRenderView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/org/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/content/browser/ContentViewRenderView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/org/chromium/content/browser/ContentViewRenderView;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentViewRenderView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetUIResourceProvider(J)J
.end method

.method private native nativeInit(J)J
.end method

.method private native nativeSetCurrentContentViewCore(JJ)V
.end method

.method private native nativeSetLayerTreeBuildHelper(JJ)V
.end method

.method private native nativeSetNeedsComposite(J)V
.end method

.method private native nativeSetOverlayVideoMode(JZ)V
.end method

.method private native nativeSurfaceChanged(JIIILandroid/view/Surface;)V
.end method

.method private native nativeSurfaceCreated(J)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private onSwapBuffersCompleted()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/android/org/chromium/content/browser/ContentViewRenderView$3;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/content/browser/ContentViewRenderView$3;-><init>(Lcom/android/org/chromium/content/browser/ContentViewRenderView;)V

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentViewRenderView;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCompositorLayout()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method
