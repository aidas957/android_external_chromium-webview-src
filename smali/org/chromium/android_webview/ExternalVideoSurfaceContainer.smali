.class public Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;
.super Ljava/lang/Object;
.source "ExternalVideoSurfaceContainer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;,
        Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$NoPunchingSurfaceView;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sActiveContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFactory:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;


# instance fields
.field private mBottom:F

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

.field private final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mHeight:I

.field private mLeft:F

.field private final mNativeExternalVideoSurfaceContainer:J

.field private mPlayerId:I

.field private mRight:F

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTop:F

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->$assertionsDisabled:Z

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->sActiveContainer:Ljava/lang/ref/WeakReference;

    .line 99
    new-instance v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;

    invoke-direct {v0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;-><init>()V

    sput-object v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->sFactory:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(JLorg/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "nativeExternalVideoSurfaceContainer"    # J
    .param p3, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    .line 114
    sget-boolean v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_0
    iput-wide p1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mNativeExternalVideoSurfaceContainer:J

    .line 116
    iput-object p3, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 117
    invoke-direct {p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->initializeCurrentPositionOfSurfaceView()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private static create(JLorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;
    .locals 2
    .param p0, "nativeExternalVideoSurfaceContainer"    # J
    .param p2, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 109
    sget-object v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->sFactory:Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$Factory;->create(JLorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    move-result-object v0

    return-object v0
.end method

.method private createSurfaceView()V
    .locals 2

    .prologue
    .line 179
    sget-boolean v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_0
    sget-boolean v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$NoPunchingSurfaceView;

    iget-object v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$NoPunchingSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 183
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 186
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    .line 187
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    new-instance v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer$1;-><init>(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)V

    iput-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    .line 196
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->addContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V

    .line 197
    return-void
.end method

.method private initializeCurrentPositionOfSurfaceView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 157
    iput v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mX:I

    .line 158
    iput v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mY:I

    .line 159
    iput v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mWidth:I

    .line 160
    iput v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mHeight:I

    .line 161
    return-void
.end method

.method private layOutSurfaceView()V
    .locals 14

    .prologue
    .line 247
    iget-object v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v12}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v5

    .line 248
    .local v5, "renderCoordinates":Lorg/chromium/content/browser/RenderCoordinates;
    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-result-object v8

    .line 249
    .local v8, "topLeft":Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;
    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->createNormalizedPoint()Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;

    move-result-object v1

    .line 250
    .local v1, "bottomRight":Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;
    iget v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mLeft:F

    iget v13, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mTop:F

    invoke-virtual {v8, v12, v13}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setAbsoluteCss(FF)V

    .line 251
    iget v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mRight:F

    iget v13, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mBottom:F

    invoke-virtual {v1, v12, v13}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->setAbsoluteCss(FF)V

    .line 252
    invoke-virtual {v8}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v7

    .line 253
    .local v7, "top":F
    invoke-virtual {v8}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v4

    .line 254
    .local v4, "left":F
    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getYPix()F

    move-result v0

    .line 255
    .local v0, "bottom":F
    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates$NormalizedPoint;->getXPix()F

    move-result v6

    .line 257
    .local v6, "right":F
    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v12

    add-float/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 258
    .local v10, "x":I
    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v12

    add-float/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 259
    .local v11, "y":I
    sub-float v12, v6, v4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 260
    .local v9, "width":I
    sub-float v12, v0, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 261
    .local v2, "height":I
    iget v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mX:I

    if-ne v12, v10, :cond_0

    iget v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mY:I

    if-ne v12, v11, :cond_0

    iget v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mWidth:I

    if-ne v12, v9, :cond_0

    iget v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mHeight:I

    if-ne v12, v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 262
    :cond_0
    iput v10, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mX:I

    .line 263
    iput v11, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mY:I

    .line 264
    iput v9, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mWidth:I

    .line 265
    iput v2, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mHeight:I

    .line 267
    iget-object v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    int-to-float v13, v10

    invoke-virtual {v12, v13}, Landroid/view/SurfaceView;->setX(F)V

    .line 268
    iget-object v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    int-to-float v13, v11

    invoke-virtual {v12, v13}, Landroid/view/SurfaceView;->setY(F)V

    .line 269
    iget-object v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 270
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 271
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    iget-object v12, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->requestLayout()V

    goto :goto_0
.end method

.method private native nativeSurfaceCreated(JILandroid/view/Surface;)V
.end method

.method private native nativeSurfaceDestroyed(JI)V
.end method

.method private static releaseIfActiveContainer(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)V
    .locals 2
    .param p0, "container"    # Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    .prologue
    .line 172
    sget-object v1, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->sActiveContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    .line 173
    .local v0, "activeContainer":Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;
    if-ne v0, p0, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->setActiveContainer(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)V

    .line 176
    :cond_0
    return-void
.end method

.method private removeSurfaceView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    sget-boolean v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_0
    sget-boolean v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_1
    sget-boolean v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_2
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V

    .line 207
    iget-object v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    iput-object v2, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    .line 210
    iput-object v2, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 211
    iput-object v2, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mContainerView:Landroid/view/ViewGroup;

    .line 212
    return-void
.end method

.method private static setActiveContainer(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)V
    .locals 2
    .param p0, "container"    # Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    .prologue
    .line 164
    sget-object v1, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->sActiveContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;

    .line 165
    .local v0, "activeContainer":Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;
    if-eqz v0, :cond_0

    .line 166
    invoke-direct {v0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->removeSurfaceView()V

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->sActiveContainer:Ljava/lang/ref/WeakReference;

    .line 169
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->releaseExternalVideoSurface(I)V

    .line 154
    return-void
.end method

.method protected onExternalVideoSurfacePositionChanged(IFFFF)V
    .locals 1
    .param p1, "playerId"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 226
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    if-eq v0, p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_0
    iput p2, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mLeft:F

    .line 229
    iput p3, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mTop:F

    .line 230
    iput p4, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mRight:F

    .line 231
    iput p5, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mBottom:F

    .line 233
    invoke-direct {p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->layOutSurfaceView()V

    goto :goto_0
.end method

.method protected onFrameInfoUpdated()V
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->layOutSurfaceView()V

    goto :goto_0
.end method

.method protected releaseExternalVideoSurface(I)V
    .locals 1
    .param p1, "playerId"    # I

    .prologue
    .line 144
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    if-eq v0, p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->releaseIfActiveContainer(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    goto :goto_0
.end method

.method protected requestExternalVideoSurface(I)V
    .locals 2
    .param p1, "playerId"    # I

    .prologue
    .line 126
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    if-ne v0, p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 129
    invoke-static {p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->setActiveContainer(Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;)V

    .line 132
    :cond_1
    iput p1, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    .line 133
    invoke-direct {p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->initializeCurrentPositionOfSurfaceView()V

    .line 135
    invoke-direct {p0}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->createSurfaceView()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 277
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 283
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 284
    iget-wide v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mNativeExternalVideoSurfaceContainer:J

    iget v2, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->nativeSurfaceCreated(JILandroid/view/Surface;)V

    .line 287
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 293
    iget v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 294
    iget-wide v0, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mNativeExternalVideoSurfaceContainer:J

    iget v2, p0, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->mPlayerId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/android_webview/ExternalVideoSurfaceContainer;->nativeSurfaceDestroyed(JI)V

    .line 296
    :cond_0
    return-void
.end method
