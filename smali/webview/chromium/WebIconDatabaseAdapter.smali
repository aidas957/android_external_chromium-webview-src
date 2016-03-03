.class final Lwebview/chromium/WebIconDatabaseAdapter;
.super Landroid/webkit/WebIconDatabase;
.source "WebIconDatabaseAdapter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .prologue
    .line 53
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lorg/chromium/android_webview/AwContents;->setShouldDownloadFavicons()V

    .line 32
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public removeAllIcons()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .prologue
    .line 47
    return-void
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method
