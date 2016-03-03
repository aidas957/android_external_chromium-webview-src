.class public abstract Lcom/android/org/chromium/android_webview/AwBrowserProcess;
.super Ljava/lang/Object;
.source "AwBrowserProcess.java"


# direct methods
.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/android/org/chromium/android_webview/AwBrowserProcess;->initializePlatformKeySystem()V

    return-void
.end method

.method private static initializePlatformKeySystem()V
    .locals 12

    .prologue
    .line 69
    invoke-static {}, Lcom/android/org/chromium/android_webview/AwResource;->getConfigKeySystemUuidMapping()[Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "mappings":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 72
    .local v6, "mapping":Ljava/lang/String;
    :try_start_0
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "fragments":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "keySystem":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    .line 75
    .local v8, "uuid":Ljava/util/UUID;
    invoke-static {v4, v8}, Lcom/android/org/chromium/media/MediaDrmBridge;->addKeySystemUuidMapping(Ljava/lang/String;Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "fragments":[Ljava/lang/String;
    .end local v4    # "keySystem":Ljava/lang/String;
    .end local v8    # "uuid":Ljava/util/UUID;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v9, "AwBrowserProcess"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t parse key-system mapping: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "mapping":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static loadLibrary()V
    .locals 3

    .prologue
    .line 33
    const-string v1, "webview"

    invoke-static {v1}, Lcom/android/org/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;)V

    .line 35
    :try_start_0
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->loadNow()V
    :try_end_0
    .catch Lcom/android/org/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->switchCommandLineForWebView()V

    .line 43
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lcom/android/org/chromium/base/library_loader/ProcessInitException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load WebView"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Lcom/android/org/chromium/android_webview/AwBrowserProcess$1;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/android_webview/AwBrowserProcess$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/org/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
