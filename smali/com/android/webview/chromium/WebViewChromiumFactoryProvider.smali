.class public Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewChromiumFactoryProvider.java"

# interfaces
.implements Landroid/webkit/WebViewFactoryProvider;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBrowserContext:Lcom/android/org/chromium/android_webview/AwBrowserContext;

.field private mCookieManager:Lcom/android/webview/chromium/CookieManagerAdapter;

.field private mDevToolsServer:Lcom/android/org/chromium/android_webview/AwDevToolsServer;

.field private mGeolocationPermissions:Lcom/android/webview/chromium/GeolocationPermissionsAdapter;

.field private final mLock:Ljava/lang/Object;

.field private mStarted:Z

.field private mStaticMethods:Landroid/webkit/WebViewFactoryProvider$Statics;

.field private mWebIconDatabase:Lcom/android/webview/chromium/WebIconDatabaseAdapter;

.field private mWebStorage:Lcom/android/webview/chromium/WebStorageAdapter;

.field private mWebViewDatabase:Lcom/android/webview/chromium/WebViewDatabaseAdapter;

.field private mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

.field private mWebViewPrefs:Landroid/content/SharedPreferences;

.field private mWebViewsToStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/webview/chromium/WebViewChromium;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewsToStart:Ljava/util/ArrayList;

    .line 106
    invoke-static {}, Lcom/android/webview/chromium/WebViewDelegateFactory;->createApi21CompatibilityDelegate()Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->initialize(Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/webkit/WebViewDelegate;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewsToStart:Ljava/util/ArrayList;

    .line 113
    invoke-static {p1}, Lcom/android/webview/chromium/WebViewDelegateFactory;->createProxyDelegate(Landroid/webkit/WebViewDelegate;)Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->initialize(Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startChromiumLocked()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->isBuildDebuggable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 172
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 173
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 174
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    invoke-static {v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->deleteContents(Ljava/io/File;)V

    .line 177
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    const-string v5, "WebViewChromiumFactoryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method private ensureChromiumStartedLocked(Z)V
    .locals 4
    .param p1, "onMainThread"    # Z

    .prologue
    .line 191
    sget-boolean v1, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 193
    :cond_0
    iget-boolean v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStarted:Z

    if-eqz v1, :cond_2

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 198
    .local v0, "looper":Landroid/os/Looper;
    :goto_1
    const-string v2, "WebViewChromiumFactoryProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding Chromium to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "main"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " looper "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {v0}, Lcom/android/org/chromium/base/ThreadUtils;->setUiThread(Landroid/os/Looper;)V

    .line 203
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->startChromiumLocked()V

    goto :goto_0

    .line 197
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    .line 198
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_4
    const-string v1, "background"

    goto :goto_2

    .line 210
    :cond_5
    new-instance v1, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$1;

    invoke-direct {v1, p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$1;-><init>(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;)V

    invoke-static {v1}, Lcom/android/org/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    :goto_3
    iget-boolean v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStarted:Z

    if-nez v1, :cond_1

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 222
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private getBrowserContextLocked()Lcom/android/org/chromium/android_webview/AwBrowserContext;
    .locals 2

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 311
    :cond_0
    sget-boolean v0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStarted:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mBrowserContext:Lcom/android/org/chromium/android_webview/AwBrowserContext;

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Lcom/android/org/chromium/android_webview/AwBrowserContext;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/android/org/chromium/android_webview/AwBrowserContext;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mBrowserContext:Lcom/android/org/chromium/android_webview/AwBrowserContext;

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mBrowserContext:Lcom/android/org/chromium/android_webview/AwBrowserContext;

    return-object v0
.end method

.method private getWrappedCurrentApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    invoke-interface {v0}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->get(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private initPlatSupportLibrary()V
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/android/org/chromium/android_webview/AwContents;->getAwDrawGLFunction()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/webview/chromium/DrawGLFunctor;->setChromiumAwDrawGLFunction(J)V

    .line 186
    invoke-static {}, Lcom/android/webview/chromium/GraphicsUtils;->getDrawSWFunctionTable()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->setAwDrawSWFunctionTable(J)V

    .line 187
    invoke-static {}, Lcom/android/webview/chromium/GraphicsUtils;->getDrawGLFunctionTable()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwContents;->setAwDrawGLFunctionTable(J)V

    .line 188
    return-void
.end method

.method private initialize(Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;)V
    .locals 9
    .param p1, "webViewDelegate"    # Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    .prologue
    const/4 v8, 0x0

    .line 117
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    .line 118
    invoke-static {}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->isBuildDebuggable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 121
    .local v4, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string v6, "/data/local/tmp/webview-command-line"

    invoke-static {v6}, Lcom/android/org/chromium/base/CommandLine;->initFromFile(Ljava/lang/String;)V

    .line 122
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 127
    .end local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :goto_0
    invoke-static {}, Lcom/android/org/chromium/base/CommandLine;->getInstance()Lcom/android/org/chromium/base/CommandLine;

    move-result-object v0

    .line 132
    .local v0, "cl":Lcom/android/org/chromium/base/CommandLine;
    const-string v6, "enable-dcheck"

    invoke-virtual {v0, v6}, Lcom/android/org/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->setWillOverrideUiThread()V

    .line 136
    invoke-static {}, Lcom/android/org/chromium/android_webview/AwBrowserProcess;->loadLibrary()V

    .line 138
    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 141
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/chromium/android_webview/AwContentsStatics;->registerCrashHandler(Ljava/lang/String;)V

    .line 145
    const-string v6, "webviewchromium_plat_support"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    invoke-interface {v6}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->getApplication()Landroid/app/Application;

    move-result-object v6

    const-string v7, "WebViewChromiumPrefs"

    invoke-virtual {v6, v7, v8}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewPrefs:Landroid/content/SharedPreferences;

    .line 150
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewPrefs:Landroid/content/SharedPreferences;

    const-string v7, "lastVersionCodeUsed"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, "lastVersion":I
    iget v1, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 152
    .local v1, "currentVersion":I
    if-le v3, v1, :cond_0

    .line 155
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    invoke-interface {v6}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/chromium/base/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "dataDir":Ljava/lang/String;
    const-string v6, "WebViewChromiumFactoryProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WebView package downgraded from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; deleting contents of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->deleteContents(Ljava/io/File;)V

    .line 160
    .end local v2    # "dataDir":Ljava/lang/String;
    :cond_0
    if-eq v3, v1, :cond_1

    .line 161
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "lastVersionCodeUsed"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    :cond_1
    return-void

    .line 124
    .end local v0    # "cl":Lcom/android/org/chromium/base/CommandLine;
    .end local v1    # "currentVersion":I
    .end local v3    # "lastVersion":I
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/org/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static isBuildDebuggable()Z
    .locals 2

    .prologue
    .line 167
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUpResources(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.android.webview"

    invoke-interface {v0, v1, v2}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/webview/chromium/ResourceRewriter;->rewriteRValues(I)V

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwResource;->setResources(Landroid/content/res/Resources;)V

    .line 337
    const/high16 v0, 0x1100000

    const v1, 0x1100001

    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwResource;->setErrorPageResources(II)V

    .line 339
    const v0, 0x1070005

    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwResource;->setConfigKeySystemUuidMapping(I)V

    .line 341
    return-void
.end method

.method private setWebContentsDebuggingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Toggling of Web Contents Debugging must be done on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mDevToolsServer:Lcom/android/org/chromium/android_webview/AwDevToolsServer;

    if-nez v0, :cond_2

    .line 324
    if-nez p1, :cond_1

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v0, Lcom/android/org/chromium/android_webview/AwDevToolsServer;

    invoke-direct {v0}, Lcom/android/org/chromium/android_webview/AwDevToolsServer;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mDevToolsServer:Lcom/android/org/chromium/android_webview/AwDevToolsServer;

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mDevToolsServer:Lcom/android/org/chromium/android_webview/AwDevToolsServer;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwDevToolsServer;->setRemoteDebuggingEnabled(Z)V

    goto :goto_0
.end method

.method private startChromiumLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 229
    sget-boolean v6, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 233
    :cond_1
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 235
    iget-boolean v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStarted:Z

    if-eqz v6, :cond_2

    .line 286
    :goto_0
    return-void

    .line 241
    :cond_2
    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/android/org/chromium/base/ResourceExtractor;->setMandatoryPaksToExtract([Ljava/lang/String;)V

    .line 244
    :try_start_0
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->ensureInitialized()V
    :try_end_0
    .catch Lcom/android/org/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const/4 v6, 0x3

    const-string v7, "/system/lib/"

    invoke-static {v6, v7}, Lcom/android/org/chromium/base/PathService;->override(ILjava/lang/String;)V

    .line 254
    const/16 v0, 0xbbb

    .line 255
    .local v0, "DIR_RESOURCE_PAKS_ANDROID":I
    const/16 v6, 0xbbb

    const-string v7, "/system/framework/webview/paks"

    invoke-static {v6, v7}, Lcom/android/org/chromium/base/PathService;->override(ILjava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getWrappedCurrentApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 260
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->setUpResources(Landroid/content/Context;)V

    .line 261
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->initPlatSupportLibrary()V

    .line 262
    invoke-static {v1}, Lcom/android/org/chromium/android_webview/AwBrowserProcess;->start(Landroid/content/Context;)V

    .line 264
    invoke-static {}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->isBuildDebuggable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    invoke-direct {p0, v9}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->setWebContentsDebuggingEnabled(Z)V

    .line 268
    :cond_3
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    invoke-interface {v6}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->isTraceTagEnabled()Z

    move-result v6

    invoke-static {v6}, Lcom/android/org/chromium/base/TraceEvent;->setATraceEnabled(Z)V

    .line 269
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    new-instance v7, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$2;

    invoke-direct {v7, p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$2;-><init>(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;)V

    invoke-interface {v6, v7}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;->setOnTraceEnabledChangeListener(Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V

    .line 276
    iput-boolean v9, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStarted:Z

    .line 278
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewsToStart:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 279
    .local v5, "wvc":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/webview/chromium/WebViewChromium;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/webview/chromium/WebViewChromium;

    .line 280
    .local v4, "w":Lcom/android/webview/chromium/WebViewChromium;
    if-eqz v4, :cond_4

    .line 281
    invoke-virtual {v4}, Lcom/android/webview/chromium/WebViewChromium;->startYourEngine()V

    goto :goto_1

    .line 245
    .end local v0    # "DIR_RESOURCE_PAKS_ANDROID":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "w":Lcom/android/webview/chromium/WebViewChromium;
    .end local v5    # "wvc":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/webview/chromium/WebViewChromium;>;"
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Lcom/android/org/chromium/base/library_loader/ProcessInitException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Error initializing WebView library"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 284
    .end local v2    # "e":Lcom/android/org/chromium/base/library_loader/ProcessInitException;
    .restart local v0    # "DIR_RESOURCE_PAKS_ANDROID":I
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewsToStart:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 285
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewsToStart:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "privateAccess"    # Landroid/webkit/WebView$PrivateAccess;

    .prologue
    .line 402
    new-instance v0, Lcom/android/webview/chromium/WebViewChromium;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/webview/chromium/WebViewChromium;-><init>(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)V

    .line 404
    .local v0, "wvc":Lcom/android/webview/chromium/WebViewChromium;
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewsToStart:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewsToStart:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    monitor-exit v2

    .line 410
    return-object v0

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBrowserContext()Lcom/android/org/chromium/android_webview/AwBrowserContext;
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getBrowserContextLocked()Lcom/android/org/chromium/android_webview/AwBrowserContext;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCookieManager()Landroid/webkit/CookieManager;
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mCookieManager:Lcom/android/webview/chromium/CookieManagerAdapter;

    if-nez v0, :cond_1

    .line 429
    iget-boolean v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStarted:Z

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getWrappedCurrentApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/chromium/content/app/ContentMain;->initApplicationContext(Landroid/content/Context;)V

    .line 436
    :cond_0
    new-instance v0, Lcom/android/webview/chromium/CookieManagerAdapter;

    new-instance v2, Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-direct {v2}, Lcom/android/org/chromium/android_webview/AwCookieManager;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/webview/chromium/CookieManagerAdapter;-><init>(Lcom/android/org/chromium/android_webview/AwCookieManager;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mCookieManager:Lcom/android/webview/chromium/CookieManagerAdapter;

    .line 438
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mCookieManager:Lcom/android/webview/chromium/CookieManagerAdapter;

    return-object v0

    .line 438
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mGeolocationPermissions:Lcom/android/webview/chromium/GeolocationPermissionsAdapter;

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->ensureChromiumStartedLocked(Z)V

    .line 418
    new-instance v0, Lcom/android/webview/chromium/GeolocationPermissionsAdapter;

    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getBrowserContextLocked()Lcom/android/org/chromium/android_webview/AwBrowserContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwBrowserContext;->getGeolocationPermissions()Lcom/android/org/chromium/android_webview/AwGeolocationPermissions;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/webview/chromium/GeolocationPermissionsAdapter;-><init>(Lcom/android/org/chromium/android_webview/AwGeolocationPermissions;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mGeolocationPermissions:Lcom/android/webview/chromium/GeolocationPermissionsAdapter;

    .line 421
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mGeolocationPermissions:Lcom/android/webview/chromium/GeolocationPermissionsAdapter;

    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStaticMethods:Landroid/webkit/WebViewFactoryProvider$Statics;

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->ensureChromiumStartedLocked(Z)V

    .line 351
    new-instance v0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$3;

    invoke-direct {v0, p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider$3;-><init>(Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStaticMethods:Landroid/webkit/WebViewFactoryProvider$Statics;

    .line 396
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStaticMethods:Landroid/webkit/WebViewFactoryProvider$Statics;

    return-object v0

    .line 396
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWebIconDatabase()Landroid/webkit/WebIconDatabase;
    .locals 2

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebIconDatabase:Lcom/android/webview/chromium/WebIconDatabaseAdapter;

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->ensureChromiumStartedLocked(Z)V

    .line 447
    new-instance v0, Lcom/android/webview/chromium/WebIconDatabaseAdapter;

    invoke-direct {v0}, Lcom/android/webview/chromium/WebIconDatabaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebIconDatabase:Lcom/android/webview/chromium/WebIconDatabaseAdapter;

    .line 449
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebIconDatabase:Lcom/android/webview/chromium/WebIconDatabaseAdapter;

    return-object v0

    .line 449
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWebStorage()Landroid/webkit/WebStorage;
    .locals 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebStorage:Lcom/android/webview/chromium/WebStorageAdapter;

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->ensureChromiumStartedLocked(Z)V

    .line 458
    new-instance v0, Lcom/android/webview/chromium/WebStorageAdapter;

    invoke-static {}, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;->getInstance()Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/webview/chromium/WebStorageAdapter;-><init>(Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebStorage:Lcom/android/webview/chromium/WebStorageAdapter;

    .line 460
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebStorage:Lcom/android/webview/chromium/WebStorageAdapter;

    return-object v0

    .line 460
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDatabase:Lcom/android/webview/chromium/WebViewDatabaseAdapter;

    if-nez v1, :cond_0

    .line 468
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->ensureChromiumStartedLocked(Z)V

    .line 469
    invoke-direct {p0}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getBrowserContextLocked()Lcom/android/org/chromium/android_webview/AwBrowserContext;

    move-result-object v0

    .line 470
    .local v0, "browserContext":Lcom/android/org/chromium/android_webview/AwBrowserContext;
    new-instance v1, Lcom/android/webview/chromium/WebViewDatabaseAdapter;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwBrowserContext;->getFormDatabase()Lcom/android/org/chromium/android_webview/AwFormDatabase;

    move-result-object v3

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwBrowserContext;->getHttpAuthDatabase(Landroid/content/Context;)Lcom/android/org/chromium/android_webview/HttpAuthDatabase;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/webview/chromium/WebViewDatabaseAdapter;-><init>(Lcom/android/org/chromium/android_webview/AwFormDatabase;Lcom/android/org/chromium/android_webview/HttpAuthDatabase;)V

    iput-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDatabase:Lcom/android/webview/chromium/WebViewDatabaseAdapter;

    .line 474
    .end local v0    # "browserContext":Lcom/android/org/chromium/android_webview/AwBrowserContext;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDatabase:Lcom/android/webview/chromium/WebViewDatabaseAdapter;

    return-object v1

    .line 474
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getWebViewDelegate()Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mWebViewDelegate:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    return-object v0
.end method

.method hasStarted()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mStarted:Z

    return v0
.end method

.method startYourEngines(Z)V
    .locals 2
    .param p1, "onMainThread"    # Z

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->ensureChromiumStartedLocked(Z)V

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
