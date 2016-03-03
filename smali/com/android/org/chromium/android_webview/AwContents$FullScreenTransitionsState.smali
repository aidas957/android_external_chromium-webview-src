.class Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;
.super Ljava/lang/Object;
.source "AwContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullScreenTransitionsState"
.end annotation


# instance fields
.field private mFullScreenView:Lcom/android/org/chromium/android_webview/FullScreenView;

.field private final mInitialAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

.field private final mInitialContainerView:Landroid/view/ViewGroup;

.field private final mInitialInternalAccessAdapter:Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;

.field private mWasInitialContainerViewFocused:Z


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;Lcom/android/org/chromium/android_webview/AwViewMethods;)V
    .locals 0
    .param p1, "initialContainerView"    # Landroid/view/ViewGroup;
    .param p2, "initialInternalAccessAdapter"    # Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;
    .param p3, "initialAwViewMethods"    # Lcom/android/org/chromium/android_webview/AwViewMethods;

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mInitialContainerView:Landroid/view/ViewGroup;

    .line 287
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mInitialInternalAccessAdapter:Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;

    .line 288
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mInitialAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;Lcom/android/org/chromium/android_webview/AwViewMethods;Lcom/android/org/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;
    .param p3, "x2"    # Lcom/android/org/chromium/android_webview/AwViewMethods;
    .param p4, "x3"    # Lcom/android/org/chromium/android_webview/AwContents$1;

    .prologue
    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;-><init>(Landroid/view/ViewGroup;Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;Lcom/android/org/chromium/android_webview/AwViewMethods;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;Lcom/android/org/chromium/android_webview/FullScreenView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;
    .param p1, "x1"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p2, "x2"    # Z

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->enterFullScreen(Lcom/android/org/chromium/android_webview/FullScreenView;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;)Lcom/android/org/chromium/android_webview/AwViewMethods;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->getInitialAwViewMethods()Lcom/android/org/chromium/android_webview/AwViewMethods;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;)Lcom/android/org/chromium/android_webview/FullScreenView;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->getFullScreenView()Lcom/android/org/chromium/android_webview/FullScreenView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->getInitialContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;)Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->getInitialInternalAccessDelegate()Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->wasInitialContainerViewFocused()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->exitFullScreen()V

    return-void
.end method

.method private enterFullScreen(Lcom/android/org/chromium/android_webview/FullScreenView;Z)V
    .locals 0
    .param p1, "fullScreenView"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p2, "wasInitialContainerViewFocused"    # Z

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mFullScreenView:Lcom/android/org/chromium/android_webview/FullScreenView;

    .line 294
    iput-boolean p2, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mWasInitialContainerViewFocused:Z

    .line 295
    return-void
.end method

.method private exitFullScreen()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mFullScreenView:Lcom/android/org/chromium/android_webview/FullScreenView;

    .line 303
    return-void
.end method

.method private getFullScreenView()Lcom/android/org/chromium/android_webview/FullScreenView;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mFullScreenView:Lcom/android/org/chromium/android_webview/FullScreenView;

    return-object v0
.end method

.method private getInitialAwViewMethods()Lcom/android/org/chromium/android_webview/AwViewMethods;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mInitialAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    return-object v0
.end method

.method private getInitialContainerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mInitialContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getInitialInternalAccessDelegate()Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mInitialInternalAccessAdapter:Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;

    return-object v0
.end method

.method private isFullScreen()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mFullScreenView:Lcom/android/org/chromium/android_webview/FullScreenView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wasInitialContainerViewFocused()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwContents$FullScreenTransitionsState;->mWasInitialContainerViewFocused:Z

    return v0
.end method
