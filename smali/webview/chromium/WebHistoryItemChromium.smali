.class public Lwebview/chromium/WebHistoryItemChromium;
.super Landroid/webkit/WebHistoryItem;
.source "WebHistoryItemChromium.java"


# instance fields
.field private final mFavicon:Landroid/graphics/Bitmap;

.field private final mOriginalUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/content_public/browser/NavigationEntry;)V
    .locals 1
    .param p1, "entry"    # Lorg/chromium/content_public/browser/NavigationEntry;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/WebHistoryItem;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mOriginalUrl:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mTitle:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationEntry;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mFavicon:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "originalUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/webkit/WebHistoryItem;-><init>()V

    .line 85
    iput-object p1, p0, Lwebview/chromium/WebHistoryItemChromium;->mUrl:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lwebview/chromium/WebHistoryItemChromium;->mOriginalUrl:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lwebview/chromium/WebHistoryItemChromium;->mTitle:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lwebview/chromium/WebHistoryItemChromium;->mFavicon:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lwebview/chromium/WebHistoryItemChromium;->clone()Lwebview/chromium/WebHistoryItemChromium;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clone()Lwebview/chromium/WebHistoryItemChromium;
    .locals 5

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Lwebview/chromium/WebHistoryItemChromium;

    iget-object v1, p0, Lwebview/chromium/WebHistoryItemChromium;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lwebview/chromium/WebHistoryItemChromium;->mOriginalUrl:Ljava/lang/String;

    iget-object v3, p0, Lwebview/chromium/WebHistoryItemChromium;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lwebview/chromium/WebHistoryItemChromium;->mFavicon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Lwebview/chromium/WebHistoryItemChromium;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lwebview/chromium/WebHistoryItemChromium;->clone()Lwebview/chromium/WebHistoryItemChromium;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lwebview/chromium/WebHistoryItemChromium;->mUrl:Ljava/lang/String;

    return-object v0
.end method
