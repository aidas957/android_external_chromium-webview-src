.class public Lcom/android/org/chromium/android_webview/AwWebResourceResponse;
.super Ljava/lang/Object;
.source "AwWebResourceResponse.java"


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mData:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mResponseHeaderNames:[Ljava/lang/String;

.field private mResponseHeaderValues:[Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mCharset:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mData:Ljava/io/InputStream;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 37
    iput p4, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mStatusCode:I

    .line 38
    iput-object p5, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    .line 40
    if-eqz p6, :cond_0

    .line 41
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mResponseHeaderNames:[Ljava/lang/String;

    .line 42
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mResponseHeaderValues:[Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "i":I
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mResponseHeaderNames:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v1

    .line 46
    iget-object v4, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mResponseHeaderValues:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 50
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method private getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method private getResponseHeaderNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mResponseHeaderNames:[Ljava/lang/String;

    return-object v0
.end method

.method private getResponseHeaderValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mResponseHeaderValues:[Ljava/lang/String;

    return-object v0
.end method

.method private getStatusCode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mStatusCode:I

    return v0
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mData:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwWebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
