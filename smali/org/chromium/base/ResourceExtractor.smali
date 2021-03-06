.class public Lorg/chromium/base/ResourceExtractor;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ResourceExtractor$ExtractTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sExtractImplicitLocalePak:Z

.field private static sInstance:Lorg/chromium/base/ResourceExtractor;

.field private static sMandatoryPaks:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    const-class v0, Lorg/chromium/base/ResourceExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    .line 47
    sput-boolean v1, Lorg/chromium/base/ResourceExtractor;->sExtractImplicitLocalePak:Z

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    .line 302
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/base/ResourceExtractor;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/chromium/base/ResourceExtractor;->sExtractImplicitLocalePak:Z

    return v0
.end method

.method static synthetic access$500(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private deleteFiles()V
    .locals 12

    .prologue
    .line 359
    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "icudtl.dat"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    .local v5, "icudata":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_0

    .line 361
    const-string v9, "ResourceExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to remove the icudata "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "natives_blob.bin"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v7, "v8_natives":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_1

    .line 365
    const-string v9, "ResourceExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to remove the v8 data "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "snapshot_blob.bin"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v8, "v8_snapshot":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 370
    const-string v9, "ResourceExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to remove the v8 data "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;

    move-result-object v1

    .line 374
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 376
    .local v3, "files":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v2, v0, v4

    .line 377
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 378
    const-string v9, "ResourceExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to remove existing resource "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_4
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lorg/chromium/base/ResourceExtractor;

    invoke-direct {v0, p0}, Lorg/chromium/base/ResourceExtractor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    .line 247
    :cond_0
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    return-object v0
.end method

.method private getAppDataDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getOutputDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "paks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs setMandatoryPaksToExtract([Ljava/lang/String;)V
    .locals 2
    .param p0, "mandatoryPaks"    # [Ljava/lang/String;

    .prologue
    .line 258
    sget-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called before startExtractingResources is called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 259
    :cond_0
    sput-object p0, Lorg/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    .line 261
    return-void
.end method

.method private static shouldSkipPakExtraction()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    sget-boolean v2, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    sget-object v2, Lorg/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 391
    :cond_0
    sget-object v2, Lorg/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    array-length v2, v2

    if-ne v2, v0, :cond_1

    const-string v2, ""

    sget-object v3, Lorg/chromium/base/ResourceExtractor;->sMandatoryPaks:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public startExtractingResources()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-direct {v0, p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/base/ResourceExtractor;)V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    .line 338
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 4

    .prologue
    .line 305
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    :goto_0
    return-void

    .line 309
    :cond_0
    sget-boolean v3, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 312
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-virtual {v3}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0

    .line 316
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v1

    .line 317
    .local v1, "e2":Ljava/util/concurrent/ExecutionException;
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0

    .line 318
    .end local v1    # "e2":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 319
    .local v2, "e3":Ljava/lang/InterruptedException;
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0
.end method
