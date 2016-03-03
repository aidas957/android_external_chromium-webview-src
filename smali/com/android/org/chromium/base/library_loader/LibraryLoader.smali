.class public Lcom/android/org/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCommandLineSwitched:Z

.field private static sInitialized:Z

.field private static sIsUsingBrowserSharedRelros:Z

.field private static sLibraryIsMappableInApk:Z

.field private static sLibraryWasLoadedFromApk:Z

.field private static sLoadAtFixedAddressFailed:Z

.field private static sLoaded:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sMapApkWithExecPermission:Z

.field private static sNativeLibraryHackWasUsed:Z

.field private static sProbeMapApkWithExecPermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    const-class v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    .line 44
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLoaded:Z

    .line 48
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sCommandLineSwitched:Z

    .line 53
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sInitialized:Z

    .line 57
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sIsUsingBrowserSharedRelros:Z

    .line 58
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLoadAtFixedAddressFailed:Z

    .line 62
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sMapApkWithExecPermission:Z

    .line 69
    sput-boolean v1, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sProbeMapApkWithExecPermission:Z

    .line 73
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLibraryWasLoadedFromApk:Z

    .line 77
    sput-boolean v1, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLibraryIsMappableInApk:Z

    .line 82
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sNativeLibraryHackWasUsed:Z

    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCommandLineSwitchedAlreadyLocked()V
    .locals 1

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 356
    :cond_0
    sget-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sCommandLineSwitched:Z

    if-eqz v0, :cond_1

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-static {}, Lcom/android/org/chromium/base/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->nativeInitCommandLine([Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/android/org/chromium/base/CommandLine;->enableNativeProxy()V

    .line 361
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sCommandLineSwitched:Z

    goto :goto_0
.end method

.method public static ensureInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;Z)V

    .line 92
    return-void
.end method

.method public static ensureInitialized(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldDeleteOldWorkaroundLibraries"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v1, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 117
    monitor-exit v1

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {p0, p1}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;Z)V

    .line 120
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 121
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v1, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initializeAlreadyLocked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 366
    sget-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 371
    :cond_0
    sget-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sCommandLineSwitched:Z

    if-nez v0, :cond_1

    .line 372
    invoke-static {}, Lcom/android/org/chromium/base/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->nativeInitCommandLine([Ljava/lang/String;)V

    .line 375
    :cond_1
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->nativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    const-string v0, "LibraryLoader"

    const-string v1, "error calling nativeLibraryLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Lcom/android/org/chromium/base/library_loader/ProcessInitException;

    invoke-direct {v0, v2}, Lcom/android/org/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 382
    :cond_2
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sInitialized:Z

    .line 386
    sget-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sCommandLineSwitched:Z

    if-nez v0, :cond_3

    .line 387
    invoke-static {}, Lcom/android/org/chromium/base/CommandLine;->enableNativeProxy()V

    .line 388
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sCommandLineSwitched:Z

    .line 392
    :cond_3
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->registerNativeEnabledObserver()V

    goto :goto_0
.end method

.method private static loadAlreadyLocked(Landroid/content/Context;Z)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldDeleteOldWorkaroundLibraries"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    sget-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLoaded:Z

    if-nez v19, :cond_11

    .line 180
    sget-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v19, :cond_0

    sget-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sInitialized:Z

    if-eqz v19, :cond_0

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :catch_0
    move-exception v4

    .line 320
    .local v4, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v19, Lcom/android/org/chromium/base/library_loader/ProcessInitException;

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/org/chromium/base/library_loader/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw v19

    .line 182
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 183
    .local v12, "startTime":J
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v16

    .line 184
    .local v16, "useChromiumLinker":Z
    const/4 v5, 0x0

    .line 186
    .local v5, "fallbackWasUsed":Z
    if-eqz v16, :cond_12

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "apkFilePath":Ljava/lang/String;
    const/16 v17, 0x0

    .line 194
    .local v17, "useMapExecSupportFallback":Z
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 195
    .local v11, "manufacturer":Ljava/lang/String;
    if-eqz v11, :cond_1

    sget-object v19, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "samsung"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 197
    const-string v19, "LibraryLoader"

    const-string v20, "Suppressed load from APK support check on this device"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sProbeMapApkWithExecPermission:Z

    .line 203
    :cond_1
    if-eqz p0, :cond_5

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 205
    sget-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sProbeMapApkWithExecPermission:Z

    if-eqz v19, :cond_2

    .line 206
    invoke-static {v2}, Lcom/android/org/chromium/base/library_loader/Linker;->checkMapExecSupport(Ljava/lang/String;)Z

    move-result v19

    sput-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sMapApkWithExecPermission:Z

    .line 208
    :cond_2
    sget-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sMapApkWithExecPermission:Z

    if-nez v19, :cond_3

    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->isInZipFile()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 209
    const-string v19, "LibraryLoader"

    const-string v20, "the no map executable support fallback will be used because memory mapping the APK file with executable permissions is not supported"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->enableNoMapExecSupportFallback()V

    .line 213
    const/16 v17, 0x1

    .line 220
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->prepareLibraryLoad()V

    .line 222
    sget-object v3, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_d

    aget-object v10, v3, v6

    .line 226
    .local v10, "library":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/org/chromium/base/library_loader/Linker;->isChromiumLinkerLibrary(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 222
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 216
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "library":Ljava/lang/String;
    :cond_5
    const-string v19, "LibraryLoader"

    const-string v20, "could not check load from APK support due to null context"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "library":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    .line 233
    .local v18, "zipFilePath":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "libFilePath":Ljava/lang/String;
    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->isInZipFile()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 236
    invoke-static {v2, v9}, Lcom/android/org/chromium/base/library_loader/Linker;->checkLibraryIsMappableInApk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 237
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLibraryIsMappableInApk:Z

    .line 239
    :cond_7
    sget-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLibraryIsMappableInApk:Z

    if-nez v19, :cond_8

    if-eqz v17, :cond_b

    .line 242
    :cond_8
    move-object/from16 v18, v2

    .line 243
    const-string v20, "LibraryLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Loading "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v17, :cond_a

    const-string v19, "using no map executable support fallback"

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " from within "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_4
    const/4 v7, 0x0

    .line 265
    .local v7, "isLoaded":Z
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->isUsingBrowserSharedRelros()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 266
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sIsUsingBrowserSharedRelros:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :try_start_2
    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    .line 269
    const/4 v7, 0x1

    .line 277
    :cond_9
    :goto_5
    if-nez v7, :cond_4

    .line 278
    :try_start_3
    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 243
    .end local v7    # "isLoaded":Z
    :cond_a
    const-string v19, "directly"

    goto :goto_3

    .line 250
    :cond_b
    const-string v19, "LibraryLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Loading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " using unpack library fallback from within "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/org/chromium/base/library_loader/LibraryLoaderHelper;->buildFallbackLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 255
    const/4 v5, 0x1

    .line 256
    const-string v19, "LibraryLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Built fallback library "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 260
    :cond_c
    const-string v19, "LibraryLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Loading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 270
    .restart local v7    # "isLoaded":Z
    :catch_1
    move-exception v4

    .line 271
    .restart local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v19, "LibraryLoader"

    const-string v20, "Failed to load native library with shared RELRO, retrying without"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->disableSharedRelros()V

    .line 274
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLoadAtFixedAddressFailed:Z

    goto :goto_5

    .line 282
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v7    # "isLoaded":Z
    .end local v9    # "libFilePath":Ljava/lang/String;
    .end local v10    # "library":Ljava/lang/String;
    .end local v18    # "zipFilePath":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->finishLibraryLoad()V

    .line 300
    .end local v2    # "apkFilePath":Ljava/lang/String;
    .end local v11    # "manufacturer":Ljava/lang/String;
    .end local v17    # "useMapExecSupportFallback":Z
    :cond_e
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 301
    sget-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sNativeLibraryHackWasUsed:Z

    if-nez v19, :cond_f

    .line 302
    const-string v19, "lib"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/org/chromium/base/library_loader/LibraryLoaderHelper;->deleteLibrariesAsynchronously(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :cond_f
    if-nez v5, :cond_10

    .line 306
    const-string v19, "fallback"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/org/chromium/base/library_loader/LibraryLoaderHelper;->deleteLibrariesAsynchronously(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 312
    .local v14, "stopTime":J
    const-string v19, "LibraryLoader"

    const-string v20, "Time to load native libraries: %d ms (timestamps %d-%d)"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sub-long v24, v14, v12

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-wide/16 v24, 0x2710

    rem-long v24, v12, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-wide/16 v24, 0x2710

    rem-long v24, v14, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLoaded:Z
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0

    .line 323
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "fallbackWasUsed":Z
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v12    # "startTime":J
    .end local v14    # "stopTime":J
    .end local v16    # "useChromiumLinker":Z
    :cond_11
    const-string v19, "LibraryLoader"

    const-string v20, "Expected native library version number \"%s\",actual native library version number \"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v19, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 329
    new-instance v19, Lcom/android/org/chromium/base/library_loader/ProcessInitException;

    const/16 v20, 0x3

    invoke-direct/range {v19 .. v20}, Lcom/android/org/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v19

    .line 285
    .restart local v5    # "fallbackWasUsed":Z
    .restart local v12    # "startTime":J
    .restart local v16    # "useChromiumLinker":Z
    :cond_12
    :try_start_4
    sget-object v3, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_6
    if-ge v6, v8, :cond_e

    aget-object v10, v3, v6
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0

    .line 287
    .restart local v10    # "library":Ljava/lang/String;
    :try_start_5
    invoke-static {v10}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_2

    .line 285
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 288
    :catch_2
    move-exception v4

    .line 289
    .restart local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    if-eqz p0, :cond_13

    :try_start_6
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/org/chromium/base/library_loader/LibraryLoaderHelper;->tryLoadLibraryUsingWorkaround(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 292
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sNativeLibraryHackWasUsed:Z

    goto :goto_7

    .line 294
    :cond_13
    throw v4
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_0

    .line 331
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v5    # "fallbackWasUsed":Z
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "library":Ljava/lang/String;
    .end local v12    # "startTime":J
    .end local v16    # "useChromiumLinker":Z
    :cond_14
    return-void
.end method

.method private static loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "libFilePath"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p0, p1}, Lcom/android/org/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-eqz p0, :cond_0

    .line 338
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLibraryWasLoadedFromApk:Z

    .line 340
    :cond_0
    return-void
.end method

.method public static loadNow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;Z)V

    .line 141
    return-void
.end method

.method public static loadNow(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldDeleteOldWorkaroundLibraries"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v1, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;Z)V

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native nativeGetVersionNumber()Ljava/lang/String;
.end method

.method private static native nativeInitCommandLine([Ljava/lang/String;)V
.end method

.method private static native nativeLibraryLoaded()Z
.end method

.method private static native nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZI)V
.end method

.method private static native nativeRecordNativeLibraryHack(Z)V
.end method

.method private static native nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZ)V
.end method

.method public static registerRendererProcessHistogram(ZZ)V
    .locals 1
    .param p0, "requestedSharedRelro"    # Z
    .param p1, "loadAtFixedAddressFailed"    # Z

    .prologue
    .line 446
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {p0, p1}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZ)V

    .line 450
    :cond_0
    return-void
.end method

.method public static switchCommandLineForWebView()V
    .locals 2

    .prologue
    .line 346
    sget-object v1, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    invoke-static {}, Lcom/android/org/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
