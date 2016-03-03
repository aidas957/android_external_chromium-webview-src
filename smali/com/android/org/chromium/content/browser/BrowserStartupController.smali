.class public Lcom/android/org/chromium/content/browser/BrowserStartupController;
.super Ljava/lang/Object;
.source "BrowserStartupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sBrowserMayStartAsynchronously:Z

.field private static sInstance:Lcom/android/org/chromium/content/browser/BrowserStartupController;


# instance fields
.field private final mAsyncStartupCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHasStartedInitializingBrowserProcess:Z

.field private mStartupDone:Z

.field private mStartupSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    .line 62
    sput-boolean v1, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/content/browser/BrowserStartupController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/BrowserStartupController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->executeEnqueuedCallbacks(IZ)V

    return-void
.end method

.method static browserMayStartAsynchonously()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    return v0
.end method

.method static browserStartupComplete(I)V
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 77
    sget-object v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sInstance:Lcom/android/org/chromium/content/browser/BrowserStartupController;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sInstance:Lcom/android/org/chromium/content/browser/BrowserStartupController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->executeEnqueuedCallbacks(IZ)V

    .line 80
    :cond_0
    return-void
.end method

.method private enqueueCallbackExecution(IZ)V
    .locals 2
    .param p1, "startupFailure"    # I
    .param p2, "alreadyStarted"    # Z

    .prologue
    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/org/chromium/content/browser/BrowserStartupController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/org/chromium/content/browser/BrowserStartupController$1;-><init>(Lcom/android/org/chromium/content/browser/BrowserStartupController;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method private executeEnqueuedCallbacks(IZ)V
    .locals 4
    .param p1, "startupResult"    # I
    .param p2, "alreadyStarted"    # Z

    .prologue
    const/4 v2, 0x1

    .line 210
    sget-boolean v3, Lcom/android/org/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Callback from browser startup from wrong thread."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 211
    :cond_0
    iput-boolean v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    .line 212
    if-gtz p1, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    .line 213
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;

    .line 214
    .local v0, "asyncStartupCallback":Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;
    iget-boolean v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    if-eqz v2, :cond_2

    .line 215
    invoke-interface {v0, p2}, Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;->onSuccess(Z)V

    goto :goto_1

    .line 212
    .end local v0    # "asyncStartupCallback":Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 217
    .restart local v0    # "asyncStartupCallback":Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;->onFailure()V

    goto :goto_1

    .line 221
    .end local v0    # "asyncStartupCallback":Lcom/android/org/chromium/content/browser/BrowserStartupController$StartupCallback;
    :cond_3
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 222
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/org/chromium/content/browser/BrowserStartupController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Tried to start the browser on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 109
    :cond_0
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 110
    sget-object v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sInstance:Lcom/android/org/chromium/content/browser/BrowserStartupController;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/chromium/content/browser/BrowserStartupController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sInstance:Lcom/android/org/chromium/content/browser/BrowserStartupController;

    .line 113
    :cond_1
    sget-object v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sInstance:Lcom/android/org/chromium/content/browser/BrowserStartupController;

    return-object v0
.end method

.method private getPlugins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/org/chromium/content/browser/PepperPluginManager;->getPlugins(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeIsOfficialBuild()Z
.end method

.method private static native nativeIsPluginEnabled()Z
.end method

.method private static native nativeSetCommandLineFlags(ZLjava/lang/String;)V
.end method

.method private static setAsynchronousStartup(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    .line 66
    return-void
.end method


# virtual methods
.method contentStart()I
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/android/org/chromium/content/app/ContentMain;->start()I

    move-result v0

    return v0
.end method

.method prepareToStartBrowserProcess(Z)V
    .locals 5
    .param p1, "singleProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v2, "BrowserStartupController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing chromium process, singleProcess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/org/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lcom/android/org/chromium/base/ResourceExtractor;

    move-result-object v1

    .line 256
    .local v1, "resourceExtractor":Lcom/android/org/chromium/base/ResourceExtractor;
    invoke-virtual {v1}, Lcom/android/org/chromium/base/ResourceExtractor;->startExtractingResources()V

    .line 260
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;Z)V

    .line 263
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/org/chromium/content/browser/DeviceUtils;->addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    .line 265
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/org/chromium/base/ResourceExtractor;->waitForCompletion()V

    .line 269
    invoke-static {}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->nativeIsPluginEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->getPlugins()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v2}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->nativeSetCommandLineFlags(ZLjava/lang/String;)V

    .line 270
    invoke-static {v0}, Lcom/android/org/chromium/content/app/ContentMain;->initApplicationContext(Landroid/content/Context;)V

    .line 271
    return-void

    .line 269
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startBrowserProcessesSync(Z)V
    .locals 2
    .param p1, "singleProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-nez v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mHasStartedInitializingBrowserProcess:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->prepareToStartBrowserProcess(Z)V

    .line 178
    :cond_0
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->setAsynchronousStartup(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->contentStart()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->enqueueCallbackExecution(IZ)V

    .line 186
    :cond_1
    sget-boolean v0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_2
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    if-nez v0, :cond_3

    .line 188
    new-instance v0, Lcom/android/org/chromium/base/library_loader/ProcessInitException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/org/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 190
    :cond_3
    return-void
.end method
