.class Lcom/android/webview/chromium/WebViewChromium;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Landroid/webkit/WebViewProvider;
.implements Landroid/webkit/WebViewProvider$ScrollDelegate;
.implements Landroid/webkit/WebViewProvider$ViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/webview/chromium/WebViewChromium$InternalAccessAdapter;,
        Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;,
        Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;

.field private static sRecordWholeDocumentEnabledByApi:Z


# instance fields
.field private final mAppTargetSdkVersion:I

.field private mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

.field private mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

.field private mContext:Landroid/content/Context;

.field private mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

.field private mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;

.field private final mHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field private mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

.field private mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

.field mWebView:Landroid/webkit/WebView;

.field mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const-class v0, Lcom/android/webview/chromium/WebViewChromium;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/webview/chromium/WebViewChromium;->$assertionsDisabled:Z

    .line 130
    const-class v0, Lcom/android/webview/chromium/WebViewChromium;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/webview/chromium/WebViewChromium;->TAG:Ljava/lang/String;

    .line 154
    sput-boolean v1, Lcom/android/webview/chromium/WebViewChromium;->sRecordWholeDocumentEnabledByApi:Z

    return-void

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)V
    .locals 2
    .param p1, "factory"    # Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "webViewPrivate"    # Landroid/webkit/WebView$PrivateAccess;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    .line 164
    iput-object p3, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    .line 165
    new-instance v0, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v0}, Landroid/webkit/WebView$HitTestResult;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 166
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->get(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    .line 167
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    .line 168
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    .line 169
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    invoke-direct {v0, p0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    .line 170
    invoke-virtual {p1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getWebViewDelegate()Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->addWebViewAssetPath(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromium;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/webview/chromium/WebViewChromium;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromium;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->initForReal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/org/chromium/android_webview/AwContents;
    .locals 1
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromium;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/DrawGLFunctor;
    .locals 1
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromium;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/webview/chromium/WebViewChromium;Lcom/android/webview/chromium/DrawGLFunctor;)Lcom/android/webview/chromium/DrawGLFunctor;
    .locals 0
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromium;
    .param p1, "x1"    # Lcom/android/webview/chromium/DrawGLFunctor;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;

    return-object p1
.end method

.method private checkNeedsPost()Z
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 310
    .local v0, "needsPost":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-nez v1, :cond_2

    .line 311
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AwContents must be created if we are not posting!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v0    # "needsPost":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    .restart local v0    # "needsPost":Z
    :cond_2
    return v0
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->createThreadException()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 321
    .local v0, "threadViolation":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$2;

    invoke-direct {v1, p0, v0}, Lcom/android/webview/chromium/WebViewChromium$2;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/RuntimeException;)V

    invoke-static {v1}, Lcom/android/org/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->createThreadException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 329
    .end local v0    # "threadViolation":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method static completeWindowCreation(Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 3
    .param p0, "parent"    # Landroid/webkit/WebView;
    .param p1, "child"    # Landroid/webkit/WebView;

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v2

    check-cast v2, Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, v2, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    .line 175
    .local v1, "parentContents":Lcom/android/org/chromium/android_webview/AwContents;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 177
    .local v0, "childContents":Lcom/android/org/chromium/android_webview/AwContents;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/org/chromium/android_webview/AwContents;->supplyContentsForPopup(Lcom/android/org/chromium/android_webview/AwContents;)V

    .line 178
    return-void

    .line 175
    .end local v0    # "childContents":Lcom/android/org/chromium/android_webview/AwContents;
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v2

    check-cast v2, Lcom/android/webview/chromium/WebViewChromium;

    iget-object v0, v2, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    goto :goto_0
.end method

.method private createThreadException()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling View methods on another thread than the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private doesSupportFullscreen(Landroid/webkit/WebChromeClient;)Z
    .locals 9
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1313
    if-nez p1, :cond_0

    .line 1336
    :goto_0
    return v4

    .line 1316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1317
    .local v0, "clientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1318
    .local v2, "foundShowMethod":Z
    const/4 v1, 0x0

    .line 1319
    .local v1, "foundHideMethod":Z
    :goto_1
    const-class v5, Landroid/webkit/WebChromeClient;

    if-eq v0, v5, :cond_4

    if-eqz v2, :cond_1

    if-nez v1, :cond_4

    .line 1320
    :cond_1
    if-nez v2, :cond_2

    .line 1322
    :try_start_0
    const-string v5, "onShowCustomView"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/webkit/WebChromeClient$CustomViewCallback;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1324
    const/4 v2, 0x1

    .line 1328
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 1330
    :try_start_1
    const-string v5, "onHideCustomView"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1331
    const/4 v1, 0x1

    .line 1334
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 1336
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    :goto_4
    move v4, v3

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_4

    .line 1332
    :catch_0
    move-exception v5

    goto :goto_3

    .line 1325
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method static enableSlowWholeDocumentDraw()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/webview/chromium/WebViewChromium;->sRecordWholeDocumentEnabledByApi:Z

    .line 157
    return-void
.end method

.method private static fixupBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "about:blank"

    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static fixupData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    .end local p0    # "data":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static fixupHistory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "about:blank"

    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static fixupMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "text/html"

    .end local p0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private initForReal()V
    .locals 10

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x0

    .line 276
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getBrowserContext()Lcom/android/org/chromium/android_webview/AwBrowserContext;

    move-result-object v1

    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/webview/chromium/WebViewChromium$InternalAccessAdapter;

    invoke-direct {v4, p0, v8}, Lcom/android/webview/chromium/WebViewChromium$InternalAccessAdapter;-><init>(Lcom/android/webview/chromium/WebViewChromium;Lcom/android/webview/chromium/WebViewChromium$1;)V

    new-instance v5, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;

    invoke-direct {v5, p0, v8}, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;-><init>(Lcom/android/webview/chromium/WebViewChromium;Lcom/android/webview/chromium/WebViewChromium$1;)V

    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    iget-object v7, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    invoke-virtual {v7}, Lcom/android/webview/chromium/ContentSettingsAdapter;->getAwSettings()Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/org/chromium/android_webview/AwContents;-><init>(Lcom/android/org/chromium/android_webview/AwBrowserContext;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/android/org/chromium/android_webview/AwContents$InternalAccessDelegate;Lcom/android/org/chromium/android_webview/AwContents$NativeGLDelegate;Lcom/android/org/chromium/android_webview/AwContentsClient;Lcom/android/org/chromium/android_webview/AwSettings;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    .line 280
    iget v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 283
    invoke-static {}, Lcom/android/org/chromium/android_webview/AwContents;->setShouldDownloadFavicons()V

    .line 286
    :cond_0
    sget-boolean v0, Lcom/android/webview/chromium/WebViewChromium;->sRecordWholeDocumentEnabledByApi:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    if-ge v0, v9, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContentsStatics;->setRecordFullDocument(Z)V

    .line 289
    iget v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    if-ge v0, v9, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->disableJavascriptInterfacesInspection()V

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayerType()I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lcom/android/org/chromium/android_webview/AwContents;->setLayerType(ILandroid/graphics/Paint;)V

    .line 297
    return-void

    .line 286
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBase64Encoded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "encoding"    # Ljava/lang/String;

    .prologue
    .line 598
    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadUrlOnUiThread(Lcom/android/org/chromium/content_public/browser/LoadUrlParams;)V
    .locals 2
    .param p1, "loadUrlParams"    # Lcom/android/org/chromium/content_public/browser/LoadUrlParams;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 644
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    sget-boolean v0, Lcom/android/webview/chromium/WebViewChromium;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$15;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$15;-><init>(Lcom/android/webview/chromium/WebViewChromium;Lcom/android/org/chromium/content_public/browser/LoadUrlParams;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 656
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->loadUrl(Lcom/android/org/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method private runBlockingFuture(Ljava/util/concurrent/FutureTask;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Must be started before we block!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method should only be called off the UI thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    invoke-virtual {v1, p1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 187
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Probable deadlock detected due to WebView API being called on incorrect thread while the UI thread is blocked."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 191
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->runBlockingFuture(Ljava/util/concurrent/FutureTask;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private runVoidTaskOnUiThreadBlocking(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 200
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 201
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->runBlockingFuture(Ljava/util/concurrent/FutureTask;)Ljava/lang/Object;

    .line 202
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v2, Lcom/android/webview/chromium/WebViewChromium$53;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$53;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1371
    :goto_0
    return-void

    .line 1366
    :cond_0
    const/4 v0, 0x0

    .line 1367
    .local v0, "requiredAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 1368
    const-class v0, Landroid/webkit/JavascriptInterface;

    .line 1370
    :cond_1
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/org/chromium/android_webview/AwContents;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 715
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$19;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$19;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 722
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 724
    .end local v0    # "ret":Ljava/lang/Boolean;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->canGoBack()Z

    move-result v1

    goto :goto_0
.end method

.method public canGoBackOrForward(I)Z
    .locals 3
    .param p1, "steps"    # I

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 773
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$23;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$23;-><init>(Lcom/android/webview/chromium/WebViewChromium;I)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 780
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 782
    .end local v0    # "ret":Ljava/lang/Boolean;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->canGoBackOrForward(I)Z

    move-result v1

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 3

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 744
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$21;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$21;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 751
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 753
    .end local v0    # "ret":Ljava/lang/Boolean;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->canGoForward()Z

    move-result v1

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 1426
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    const/4 v0, 0x0

    .line 1429
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 1434
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    const/4 v0, 0x0

    .line 1437
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 3

    .prologue
    .line 851
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 852
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$28;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$28;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Picture;

    .line 861
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 2
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$42;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$42;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1117
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->clearCache(Z)V

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$43;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$43;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1134
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->hideAutofillPopup()V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$44;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$44;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1148
    :goto_0
    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->clearHistory()V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 2

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$50;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$50;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1274
    :goto_0
    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->clearMatches()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$45;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$45;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1162
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->clearSslPreferences()V

    goto :goto_0
.end method

.method public clearView()V
    .locals 2

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$27;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$27;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 847
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->clearView()V

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 3

    .prologue
    .line 2043
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 2044
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2045
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$88;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$88;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2053
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->computeHorizontalScrollOffset()I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 2028
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 2029
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2030
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$87;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$87;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2038
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 2104
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$92;

    invoke-direct {v0, p0}, Lcom/android/webview/chromium/WebViewChromium$92;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->runVoidTaskOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 2114
    :goto_0
    return-void

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->computeScroll()V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 3

    .prologue
    .line 2088
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 2089
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2090
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$91;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$91;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2098
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 2074
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2075
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$90;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$90;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2083
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->computeVerticalScrollOffset()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2058
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 2059
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2060
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$89;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$89;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2068
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 3

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1167
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$46;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$46;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebBackForwardList;

    .line 1176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/webview/chromium/WebBackForwardListChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getNavigationHistory()Lcom/android/org/chromium/content_public/browser/NavigationHistory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/webview/chromium/WebBackForwardListChromium;-><init>(Lcom/android/org/chromium/content_public/browser/NavigationHistory;)V

    goto :goto_0
.end method

.method public createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;
    .locals 2
    .param p1, "documentName"    # Ljava/lang/String;

    .prologue
    .line 2123
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 2124
    new-instance v0, Lcom/android/org/chromium/android_webview/AwPrintDocumentAdapter;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getPdfExporter()Lcom/android/org/chromium/android_webview/AwPdfExporter;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/org/chromium/android_webview/AwPrintDocumentAdapter;-><init>(Lcom/android/org/chromium/android_webview/AwPdfExporter;Ljava/lang/String;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$10;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$10;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->destroy()V

    .line 463
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;

    invoke-virtual {v0}, Lcom/android/webview/chromium/DrawGLFunctor;->destroy()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1867
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1868
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1869
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$78;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$78;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/KeyEvent;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1877
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1278
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$51;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$51;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1288
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->documentHasImages(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 1481
    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p2, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 660
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 661
    return-void
.end method

.method public extractSmartClipData(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2237
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 2238
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwContents;->extractSmartClipData(IIII)V

    .line 2239
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/webview/chromium/WebViewChromium;->findAllAsync(Ljava/lang/String;)V

    .line 1202
    const/4 v0, 0x0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$48;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$48;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1217
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 1486
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNext(Z)V
    .locals 2
    .param p1, "forwards"    # Z

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$47;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$47;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1197
    :goto_0
    return-void

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->findNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 2
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$55;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$55;-><init>(Lcom/android/webview/chromium/WebViewChromium;II)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1409
    :goto_0
    return-void

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->flingScroll(II)V

    goto :goto_0
.end method

.method public freeMemory()V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    .prologue
    .line 1525
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1526
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$59;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$59;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 1536
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 398
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$7;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$7;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/http/SslCertificate;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1019
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getContentHeightCss()I

    move-result v0

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1026
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getContentWidthCss()I

    move-result v0

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 989
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 990
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$36;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$36;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 999
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 4

    .prologue
    .line 893
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 894
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    new-instance v2, Lcom/android/webview/chromium/WebViewChromium$30;

    invoke-direct {v2, p0}, Lcom/android/webview/chromium/WebViewChromium$30;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v2}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView$HitTestResult;

    .line 907
    :goto_0
    return-object v1

    .line 904
    :cond_0
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwContents;->getLastHitTestResult()Lcom/android/org/chromium/android_webview/AwContents$HitTestData;

    move-result-object v0

    .line 905
    .local v0, "data":Lcom/android/org/chromium/android_webview/AwContents$HitTestData;
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget v3, v0, Lcom/android/org/chromium/android_webview/AwContents$HitTestData;->hitTestResultType:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setType(I)V

    .line 906
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iget-object v3, v0, Lcom/android/org/chromium/android_webview/AwContents$HitTestData;->hitTestResultExtraData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V

    .line 907
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mHitTestResult:Landroid/webkit/WebView$HitTestResult;

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 438
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$9;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 447
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 957
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 958
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    new-instance v2, Lcom/android/webview/chromium/WebViewChromium$34;

    invoke-direct {v2, p0}, Lcom/android/webview/chromium/WebViewChromium$34;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v2}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 969
    :goto_0
    return-object v0

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwContents;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 969
    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    .line 1012
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getMostRecentProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 868
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->getScale()F

    move-result v0

    return v0
.end method

.method public getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;
    .locals 0

    .prologue
    .line 1500
    return-object p0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 975
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$35;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$35;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 984
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 940
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 941
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 942
    new-instance v2, Lcom/android/webview/chromium/WebViewChromium$33;

    invoke-direct {v2, p0}, Lcom/android/webview/chromium/WebViewChromium$33;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v2}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 952
    :goto_0
    return-object v0

    .line 950
    :cond_0
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwContents;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 952
    goto :goto_0
.end method

.method public getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;
    .locals 0

    .prologue
    .line 1494
    return-object p0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1413
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1414
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-object v0

    .line 1420
    :cond_1
    sget-object v1, Lcom/android/webview/chromium/WebViewChromium;->TAG:Ljava/lang/String;

    const-string v2, "WebView doesn\'t support getZoomControls"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->getSettings()Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwSettings;->supportZoom()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$20;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$20;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 739
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->goBack()V

    goto :goto_0
.end method

.method public goBackOrForward(I)V
    .locals 2
    .param p1, "steps"    # I

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$24;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$24;-><init>(Lcom/android/webview/chromium/WebViewChromium;I)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 797
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->goBackOrForward(I)V

    goto :goto_0
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$22;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$22;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 768
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->goForward()V

    goto :goto_0
.end method

.method public init(Ljava/util/Map;Z)V
    .locals 10
    .param p2, "privateBrowsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "javaScriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v8, 0x13

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 215
    if-eqz p2, :cond_1

    .line 216
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v6, v4}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 217
    const-string v2, "Private browsing is not supported in WebView."

    .line 218
    .local v2, "msg":Ljava/lang/String;
    iget v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    if-lt v6, v8, :cond_0

    .line 219
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Private browsing is not supported in WebView."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_0
    sget-object v6, Lcom/android/webview/chromium/WebViewChromium;->TAG:Ljava/lang/String;

    const-string v7, "Private browsing is not supported in WebView."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 223
    .local v3, "warningLabel":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/webview/chromium/R$string;->webviewchromium_private_browsing_warning:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 233
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "warningLabel":Landroid/widget/TextView;
    :cond_1
    iget v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_4

    .line 234
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v6, v5}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 235
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 242
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_5

    move v1, v4

    .line 244
    .local v1, "isAccessFromFileURLsGrantedByDefault":Z
    :goto_1
    iget v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    if-ge v6, v8, :cond_6

    move v0, v4

    .line 247
    .local v0, "areLegacyQuirksEnabled":Z
    :goto_2
    new-instance v6, Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    iget-object v7, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v9}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getWebViewDelegate()Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/webview/chromium/WebViewContentsClientAdapter;-><init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;)V

    iput-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    .line 249
    new-instance v6, Lcom/android/webview/chromium/ContentSettingsAdapter;

    new-instance v7, Lcom/android/org/chromium/android_webview/AwSettings;

    iget-object v8, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v1, v0}, Lcom/android/org/chromium/android_webview/AwSettings;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {v6, v7}, Lcom/android/webview/chromium/ContentSettingsAdapter;-><init>(Lcom/android/org/chromium/android_webview/AwSettings;)V

    iput-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    .line 253
    iget v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_3

    .line 255
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    invoke-virtual {v6, v5}, Lcom/android/webview/chromium/ContentSettingsAdapter;->setMixedContentMode(I)V

    .line 256
    iget-object v5, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    invoke-virtual {v5, v4}, Lcom/android/webview/chromium/ContentSettingsAdapter;->setAcceptThirdPartyCookies(Z)V

    .line 257
    iget-object v5, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    invoke-virtual {v5}, Lcom/android/webview/chromium/ContentSettingsAdapter;->getAwSettings()Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/org/chromium/android_webview/AwSettings;->setZeroLayoutHeightDisablesViewportQuirk(Z)V

    .line 260
    :cond_3
    iget-object v4, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v5, Lcom/android/webview/chromium/WebViewChromium$1;

    invoke-direct {v5, p0, p2}, Lcom/android/webview/chromium/WebViewChromium$1;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-virtual {v4, v5}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 273
    return-void

    .line 236
    .end local v0    # "areLegacyQuirksEnabled":Z
    .end local v1    # "isAccessFromFileURLsGrantedByDefault":Z
    :cond_4
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v6}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->hasStarted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 237
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 238
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v6, v4}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    goto :goto_0

    :cond_5
    move v1, v5

    .line 242
    goto :goto_1

    .restart local v1    # "isAccessFromFileURLsGrantedByDefault":Z
    :cond_6
    move v0, v5

    .line 244
    goto :goto_2
.end method

.method public invokeZoomPicker()V
    .locals 2

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$29;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$29;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 889
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->invokeZoomPicker()V

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 3

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1088
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$41;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$41;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1095
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1097
    .end local v0    # "ret":Ljava/lang/Boolean;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->isPaused()Z

    move-result v1

    goto :goto_0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-static {p1}, Lcom/android/webview/chromium/WebViewChromium;->fixupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/webview/chromium/WebViewChromium;->fixupMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/android/webview/chromium/WebViewChromium;->isBase64Encoded(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;->createLoadDataParams(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/org/chromium/content_public/browser/LoadUrlParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->loadUrlOnUiThread(Lcom/android/org/chromium/content_public/browser/LoadUrlParams;)V

    .line 605
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-static {p2}, Lcom/android/webview/chromium/WebViewChromium;->fixupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 611
    invoke-static {p3}, Lcom/android/webview/chromium/WebViewChromium;->fixupMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 613
    invoke-static {p1}, Lcom/android/webview/chromium/WebViewChromium;->fixupBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-static/range {p5 .. p5}, Lcom/android/webview/chromium/WebViewChromium;->fixupHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 616
    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {p4}, Lcom/android/webview/chromium/WebViewChromium;->isBase64Encoded(Ljava/lang/String;)Z

    move-result v2

    .line 620
    .local v2, "isBase64":Z
    if-eqz v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p2

    move-object v1, p3

    move-object v3, p1

    move-object/from16 v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/chromium/content_public/browser/LoadUrlParams;

    move-result-object v10

    .line 636
    .end local v2    # "isBase64":Z
    .local v10, "loadUrlParams":Lcom/android/org/chromium/content_public/browser/LoadUrlParams;
    :goto_1
    invoke-direct {p0, v10}, Lcom/android/webview/chromium/WebViewChromium;->loadUrlOnUiThread(Lcom/android/org/chromium/content_public/browser/LoadUrlParams;)V

    .line 637
    .end local v10    # "loadUrlParams":Lcom/android/org/chromium/content_public/browser/LoadUrlParams;
    :goto_2
    return-void

    .restart local v2    # "isBase64":Z
    :cond_0
    move-object v5, p4

    .line 620
    goto :goto_0

    .line 628
    .end local v2    # "isBase64":Z
    :cond_1
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const-string v8, "utf-8"

    move-object v4, p3

    move-object v6, p1

    move-object/from16 v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/chromium/content_public/browser/LoadUrlParams;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .restart local v10    # "loadUrlParams":Lcom/android/org/chromium/content_public/browser/LoadUrlParams;
    goto :goto_1

    .line 631
    .end local v10    # "loadUrlParams":Lcom/android/org/chromium/content_public/browser/LoadUrlParams;
    :catch_0
    move-exception v9

    .line 632
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/android/webview/chromium/WebViewChromium;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load data string "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/webview/chromium/WebViewChromium;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "javascript:"

    .line 540
    .local v0, "JAVASCRIPT_SCHEME":Ljava/lang/String;
    iget v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    if-eqz p1, :cond_1

    const-string v2, "javascript:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 543
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v3, Lcom/android/webview/chromium/WebViewChromium$14;

    invoke-direct {v3, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$14;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 561
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    const-string v3, "javascript:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/chromium/android_webview/AwContents;->evaluateJavaScriptEvenIfNotYetNavigated(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_1
    new-instance v1, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v1, p1}, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, "params":Lcom/android/org/chromium/content_public/browser/LoadUrlParams;
    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;->setExtraHeaders(Ljava/util/Map;)V

    .line 560
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->loadUrlOnUiThread(Lcom/android/org/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0
.end method

.method public notifyFindDialogDismissed()V
    .locals 2

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$49;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$49;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1260
    :goto_0
    return-void

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium;->clearMatches()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1766
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 1767
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->onAttachedToWindow()V

    .line 1768
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$68;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$68;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1702
    :goto_0
    return-void

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1707
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    const/4 v0, 0x0

    .line 1710
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1772
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$72;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$72;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1783
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->onDetachedFromWindow()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1662
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$67;

    invoke-direct {v0, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$67;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/graphics/Canvas;)V

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->runVoidTaskOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1672
    :goto_0
    return-void

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView$PrivateAccess;->super_onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 1628
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->onFinishTemporaryDetach()V

    .line 2022
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$75;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/webview/chromium/WebViewChromium$75;-><init>(Lcom/android/webview/chromium/WebViewChromium;ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1830
    :goto_0
    return-void

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwContents;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1912
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1913
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1914
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$81;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$81;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1922
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1897
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1898
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1899
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$80;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$80;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1907
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1557
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$61;

    invoke-direct {v0, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$61;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->runVoidTaskOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1567
    :goto_0
    return-void

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1542
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$60;

    invoke-direct {v0, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$60;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->runVoidTaskOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1552
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1731
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v1, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1732
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1733
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$70;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$70;-><init>(Lcom/android/webview/chromium/WebViewChromium;ILandroid/view/KeyEvent;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1742
    :goto_0
    return v0

    .line 1741
    :cond_0
    invoke-static {}, Lcom/android/webview/chromium/UnimplementedWebViewApi;->invoke()V

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1715
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v1, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1716
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1717
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$69;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/webview/chromium/WebViewChromium$69;-><init>(Lcom/android/webview/chromium/WebViewChromium;IILandroid/view/KeyEvent;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1726
    :goto_0
    return v0

    .line 1725
    :cond_0
    invoke-static {}, Lcom/android/webview/chromium/UnimplementedWebViewApi;->invoke()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1747
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1748
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1749
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$71;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$71;-><init>(Lcom/android/webview/chromium/WebViewChromium;ILandroid/view/KeyEvent;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1757
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1950
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$83;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$83;-><init>(Lcom/android/webview/chromium/WebViewChromium;II)V

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromium;->runVoidTaskOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1960
    :goto_0
    return-void

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->onMeasure(II)V

    goto :goto_0
.end method

.method public onOverScrolled(IIZZ)V
    .locals 7
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1633
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$65;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/webview/chromium/WebViewChromium$65;-><init>(Lcom/android/webview/chromium/WebViewChromium;IIZZ)V

    invoke-virtual {v6, v0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1643
    :goto_0
    return-void

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwContents;->onContainerViewOverScrolled(IIZZ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$39;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$39;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1069
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$40;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$40;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1083
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->onResume()V

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$77;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/webview/chromium/WebViewChromium$77;-><init>(Lcom/android/webview/chromium/WebViewChromium;IIII)V

    invoke-virtual {v6, v0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1863
    :goto_0
    return-void

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwContents;->onContainerViewScrollChanged(IIII)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 1839
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$76;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/webview/chromium/WebViewChromium$76;-><init>(Lcom/android/webview/chromium/WebViewChromium;IIII)V

    invoke-virtual {v6, v0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1849
    :goto_0
    return-void

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwContents;->onSizeChanged(IIII)V

    goto :goto_0
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->onStartTemporaryDetach()V

    .line 2018
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1882
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1883
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1884
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$79;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$79;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1892
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1928
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-nez v0, :cond_0

    .line 1801
    :goto_0
    return-void

    .line 1791
    :cond_0
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$73;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$73;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->onVisibilityChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$74;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$74;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1815
    :goto_0
    return-void

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1647
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$66;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$66;-><init>(Lcom/android/webview/chromium/WebViewChromium;I)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1657
    :goto_0
    return-void

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->onWindowVisibilityChanged(I)V

    goto :goto_0
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 362
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$5;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$5;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->overlayHorizontalScrollbar()Z

    move-result v0

    goto :goto_0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 377
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$6;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$6;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->overlayVerticalScrollbar()Z

    move-result v0

    goto :goto_0
.end method

.method public pageDown(Z)Z
    .locals 3
    .param p1, "bottom"    # Z

    .prologue
    .line 822
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 823
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$26;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$26;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 830
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 832
    .end local v0    # "ret":Ljava/lang/Boolean;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->pageDown(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 3
    .param p1, "top"    # Z

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 808
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$25;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$25;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 815
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 817
    .end local v0    # "ret":Ljava/lang/Boolean;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->pageUp(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$37;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$37;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1041
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->pauseTimers()V

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1571
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1572
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1573
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$62;-><init>(Lcom/android/webview/chromium/WebViewChromium;ILandroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1584
    :goto_0
    return v0

    .line 1581
    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->supportsAccessibilityAction(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1582
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 1584
    :cond_1
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0}, Landroid/webkit/WebView$PrivateAccess;->super_performLongClick()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 574
    invoke-static {p1, p2}, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;->createLoadHttpPostParams(Ljava/lang/String;[B)Lcom/android/org/chromium/content_public/browser/LoadUrlParams;

    move-result-object v1

    .line 575
    .local v1, "params":Lcom/android/org/chromium/content_public/browser/LoadUrlParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 576
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual {v1, v0}, Lcom/android/org/chromium/content_public/browser/LoadUrlParams;->setExtraHeaders(Ljava/util/Map;)V

    .line 578
    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->loadUrlOnUiThread(Lcom/android/org/chromium/content_public/browser/LoadUrlParams;)V

    .line 579
    return-void
.end method

.method public preDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2014
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$18;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$18;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 710
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->reload()V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$54;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$54;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1385
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1965
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1966
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1967
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$84;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/webview/chromium/WebViewChromium$84;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/View;Landroid/graphics/Rect;Z)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1975
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwContents;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1933
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1934
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1935
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$82;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$82;-><init>(Lcom/android/webview/chromium/WebViewChromium;ILandroid/graphics/Rect;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1944
    :goto_0
    return v0

    .line 1943
    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->requestFocus()V

    .line 1944
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 2
    .param p1, "hrefMsg"    # Landroid/os/Message;

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$31;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$31;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 922
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$32;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$32;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 936
    :goto_0
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->requestImageRef(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "src"    # Ljava/io/File;

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 517
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$13;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$13;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebBackForwardList;

    .line 528
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    if-eqz p1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->restoreState(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$38;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$38;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1055
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->resumeTimers()V

    goto :goto_0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 418
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 487
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 488
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$12;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$12;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebBackForwardList;

    .line 499
    :cond_0
    :goto_0
    return-object v0

    .line 497
    :cond_1
    if-eqz p1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1, p1}, Lcom/android/org/chromium/android_webview/AwContents;->saveState(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 665
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 666
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/webview/chromium/WebViewChromium$16;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 681
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwContents;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1981
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$85;

    invoke-direct {v0, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$85;-><init>(Lcom/android/webview/chromium/WebViewChromium;I)V

    invoke-static {v0}, Lcom/android/org/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1991
    :goto_0
    return-void

    .line 1990
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 413
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/DownloadListener;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    invoke-virtual {v0, p1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1298
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    invoke-virtual {v0, p1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 1183
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView$PrivateAccess;->super_setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 2
    .param p1, "overlay"    # Z

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$3;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$3;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->setHorizontalScrollbarOverlay(Z)V

    goto :goto_0
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/webview/chromium/WebViewChromium$8;-><init>(Lcom/android/webview/chromium/WebViewChromium;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwContents;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInitialScale(I)V
    .locals 2
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/webview/chromium/ContentSettingsAdapter;->getAwSettings()Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwSettings;->setInitialPageScale(F)V

    .line 875
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-nez v0, :cond_0

    .line 2008
    :goto_0
    return-void

    .line 1998
    :cond_0
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1999
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium$86;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium$86;-><init>(Lcom/android/webview/chromium/WebViewChromium;ILandroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/android/org/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2007
    :cond_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwContents;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1680
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 1681
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1682
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .param p1, "setMap"    # Z

    .prologue
    .line 1395
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 2
    .param p1, "networkUp"    # Z

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$11;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$11;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->setNetworkAvailable(Z)V

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-nez v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$63;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$63;-><init>(Lcom/android/webview/chromium/WebViewChromium;I)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/webkit/WebView$PictureListener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1341
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$52;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$52;-><init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/webkit/WebView$PictureListener;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1353
    :goto_0
    return-void

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    invoke-virtual {v0, p1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1351
    iget-object v3, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/android/webview/chromium/WebViewChromium;->mAppTargetSdkVersion:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_2

    :goto_2
    invoke-virtual {v3, v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->enableOnNewPicture(ZZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public setScrollBarStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 1609
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$64;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$64;-><init>(Lcom/android/webview/chromium/WebViewChromium;I)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 1619
    :goto_0
    return-void

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->setScrollBarStyle(I)V

    goto :goto_0
.end method

.method public setSmartClipResultHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "resultHandler"    # Landroid/os/Handler;

    .prologue
    .line 2244
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 2245
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->setSmartClipResultHandler(Landroid/os/Handler;)V

    .line 2246
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 2
    .param p1, "overlay"    # Z

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$4;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebViewChromium$4;-><init>(Lcom/android/webview/chromium/WebViewChromium;Z)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->setVerticalScrollbarOverlay(Z)V

    goto :goto_0
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 2
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebSettings:Lcom/android/webview/chromium/ContentSettingsAdapter;

    invoke-virtual {v0}, Lcom/android/webview/chromium/ContentSettingsAdapter;->getAwSettings()Lcom/android/org/chromium/android_webview/AwSettings;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/webview/chromium/WebViewChromium;->doesSupportFullscreen(Landroid/webkit/WebChromeClient;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwSettings;->setFullscreenSupported(Z)V

    .line 1303
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    invoke-virtual {v0, p1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1304
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mContentsClientAdapter:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    invoke-virtual {v0, p1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1293
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 3

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1511
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$58;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$58;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showIme"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1221
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v2, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1222
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return v1

    .line 1225
    :cond_1
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1229
    new-instance v0, Landroid/webkit/FindActionModeCallback;

    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    .line 1230
    .local v0, "findAction":Landroid/webkit/FindActionModeCallback;
    if-eqz v0, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 1235
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebView;)V

    .line 1236
    if-eqz p2, :cond_2

    .line 1237
    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->showSoftInput()V

    .line 1240
    :cond_2
    if-eqz p1, :cond_3

    .line 1241
    invoke-virtual {v0, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 1245
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method startYourEngine()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    invoke-virtual {v0}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->drainQueue()V

    .line 301
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mRunQueue:Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;

    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$17;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$17;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium$WebViewChromiumRunQueue;->addTask(Ljava/lang/Runnable;)V

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->stopLoading()V

    goto :goto_0
.end method

.method public zoomBy(F)Z
    .locals 2
    .param p1, "factor"    # F

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1474
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkThread()V

    .line 1475
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwContents;->zoomBy(F)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 3

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1443
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1444
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$56;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$56;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1452
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 3

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startYourEngines(Z)V

    .line 1458
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromium;->checkNeedsPost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    new-instance v1, Lcom/android/webview/chromium/WebViewChromium$57;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromium$57;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromium;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1467
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
