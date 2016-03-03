.class public Lorg/chromium/android_webview/AwAssets;
.super Ljava/lang/Object;
.source "AwAssets.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openAsset(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 30
    .local v3, "manager":Landroid/content/res/AssetManager;
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 31
    const/4 v4, 0x3

    new-array v4, v4, [J

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .end local v3    # "manager":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    return-object v4

    .line 42
    .restart local v3    # "manager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e2":Ljava/io/IOException;
    const-string v5, "AwAssets"

    const-string v6, "Unable to close AssetFileDescriptor"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    .end local v2    # "e2":Ljava/io/IOException;
    .end local v3    # "manager":Landroid/content/res/AssetManager;
    :catch_1
    move-exception v1

    .line 35
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "AwAssets"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while loading asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v4, 0x3

    new-array v4, v4, [J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    fill-array-data v4, :array_0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 42
    :catch_2
    move-exception v2

    .line 43
    .restart local v2    # "e2":Ljava/io/IOException;
    const-string v5, "AwAssets"

    const-string v6, "Unable to close AssetFileDescriptor"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 38
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 39
    if-eqz v0, :cond_1

    .line 40
    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 44
    :cond_1
    :goto_1
    throw v4

    .line 42
    :catch_3
    move-exception v2

    .line 43
    .restart local v2    # "e2":Ljava/io/IOException;
    const-string v5, "AwAssets"

    const-string v6, "Unable to close AssetFileDescriptor"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 36
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
