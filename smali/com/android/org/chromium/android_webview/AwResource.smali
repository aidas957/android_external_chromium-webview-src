.class public Lcom/android/org/chromium/android_webview/AwResource;
.super Ljava/lang/Object;
.source "AwResource.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sRawLoadError:I

.field private static sRawNoDomain:I

.field private static sResourceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResources:Landroid/content/res/Resources;

.field private static sStringArrayConfigKeySystemUUIDMapping:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/org/chromium/android_webview/AwResource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/android_webview/AwResource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigKeySystemUuidMapping()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/android/org/chromium/android_webview/AwResource;->sResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/org/chromium/android_webview/AwResource;->sStringArrayConfigKeySystemUUIDMapping:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadErrorPageContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget v0, Lcom/android/org/chromium/android_webview/AwResource;->sRawLoadError:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwResource;->getResource(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNoDomainPageContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    sget v0, Lcom/android/org/chromium/android_webview/AwResource;->sRawNoDomain:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/org/chromium/android_webview/AwResource;->getResource(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawFileResourceContent(I)Ljava/lang/String;
    .locals 6
    .param p0, "resid"    # I

    .prologue
    .line 102
    sget-boolean v4, Lcom/android/org/chromium/android_webview/AwResource;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 103
    :cond_0
    sget-boolean v4, Lcom/android/org/chromium/android_webview/AwResource;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/org/chromium/android_webview/AwResource;->sResources:Landroid/content/res/Resources;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 105
    :cond_1
    const/4 v1, 0x0

    .line 106
    .local v1, "isr":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 109
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/android/org/chromium/android_webview/AwResource;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    const-string v5, "\\A"

    invoke-virtual {v4, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 120
    if-eqz v2, :cond_2

    .line 121
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_0
    move-object v1, v2

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v3

    .line 127
    :cond_3
    :goto_1
    return-object v4

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2
    :try_start_3
    const-string v4, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    if-eqz v1, :cond_3

    .line 121
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 123
    :catch_1
    move-exception v5

    goto :goto_1

    .line 116
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/util/NoSuchElementException;
    :goto_3
    :try_start_5
    const-string v4, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    if-eqz v1, :cond_3

    .line 121
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 123
    :catch_3
    move-exception v5

    goto :goto_1

    .line 119
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v4

    .line 120
    :goto_4
    if-eqz v1, :cond_4

    .line 121
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 125
    :cond_4
    :goto_5
    throw v4

    .line 123
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v5

    goto :goto_5

    .line 119
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 116
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 114
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private static getResource(II)Ljava/lang/String;
    .locals 4
    .param p0, "resid"    # I
    .param p1, "type"    # I

    .prologue
    .line 78
    sget-boolean v2, Lcom/android/org/chromium/android_webview/AwResource;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 79
    :cond_0
    sget-boolean v2, Lcom/android/org/chromium/android_webview/AwResource;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/org/chromium/android_webview/AwResource;->sResources:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 80
    :cond_1
    sget-boolean v2, Lcom/android/org/chromium/android_webview/AwResource;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/org/chromium/android_webview/AwResource;->sResourceCache:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 82
    :cond_2
    sget-object v2, Lcom/android/org/chromium/android_webview/AwResource;->sResourceCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 83
    .local v1, "stringRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/lang/String;>;"
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 84
    .local v0, "result":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_4

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown resource type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .line 87
    .restart local v0    # "result":Ljava/lang/String;
    :pswitch_0
    sget-object v2, Lcom/android/org/chromium/android_webview/AwResource;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    sget-object v2, Lcom/android/org/chromium/android_webview/AwResource;->sResourceCache:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :cond_4
    return-object v0

    .line 90
    :pswitch_1
    invoke-static {p0}, Lcom/android/org/chromium/android_webview/AwResource;->getRawFileResourceContent(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setConfigKeySystemUuidMapping(I)V
    .locals 0
    .param p0, "config"    # I

    .prologue
    .line 59
    sput p0, Lcom/android/org/chromium/android_webview/AwResource;->sStringArrayConfigKeySystemUUIDMapping:I

    .line 60
    return-void
.end method

.method public static setErrorPageResources(II)V
    .locals 0
    .param p0, "loaderror"    # I
    .param p1, "nodomain"    # I

    .prologue
    .line 54
    sput p0, Lcom/android/org/chromium/android_webview/AwResource;->sRawLoadError:I

    .line 55
    sput p1, Lcom/android/org/chromium/android_webview/AwResource;->sRawNoDomain:I

    .line 56
    return-void
.end method

.method public static setResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 49
    sput-object p0, Lcom/android/org/chromium/android_webview/AwResource;->sResources:Landroid/content/res/Resources;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/org/chromium/android_webview/AwResource;->sResourceCache:Landroid/util/SparseArray;

    .line 51
    return-void
.end method
