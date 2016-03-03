.class public Lcom/android/webview/chromium/WebBackForwardListChromium;
.super Landroid/webkit/WebBackForwardList;
.source "WebBackForwardListChromium.java"


# instance fields
.field private final mCurrentIndex:I

.field private final mHistroryItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/webview/chromium/WebHistoryItemChromium;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content_public/browser/NavigationHistory;)V
    .locals 4
    .param p1, "nav_history"    # Lcom/android/org/chromium/content_public/browser/NavigationHistory;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/webkit/WebBackForwardList;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/android/org/chromium/content_public/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v1

    iput v1, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mCurrentIndex:I

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/org/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mHistroryItemList:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mHistroryItemList:Ljava/util/List;

    new-instance v2, Lcom/android/webview/chromium/WebHistoryItemChromium;

    invoke-virtual {p1, v0}, Lcom/android/org/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lcom/android/org/chromium/content_public/browser/NavigationEntry;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/webview/chromium/WebHistoryItemChromium;-><init>(Lcom/android/org/chromium/content_public/browser/NavigationEntry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/webview/chromium/WebHistoryItemChromium;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/webview/chromium/WebHistoryItemChromium;>;"
    invoke-direct {p0}, Landroid/webkit/WebBackForwardList;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mHistroryItemList:Ljava/util/List;

    .line 88
    iput p2, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mCurrentIndex:I

    .line 89
    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->clone()Lcom/android/webview/chromium/WebBackForwardListChromium;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized clone()Lcom/android/webview/chromium/WebBackForwardListChromium;
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->getSize()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/webview/chromium/WebHistoryItemChromium;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mHistroryItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/webview/chromium/WebHistoryItemChromium;

    invoke-virtual {v2}, Lcom/android/webview/chromium/WebHistoryItemChromium;->clone()Lcom/android/webview/chromium/WebHistoryItemChromium;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance v2, Lcom/android/webview/chromium/WebBackForwardListChromium;

    iget v3, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mCurrentIndex:I

    invoke-direct {v2, v1, v3}, Lcom/android/webview/chromium/WebBackForwardListChromium;-><init>(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 96
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/webview/chromium/WebHistoryItemChromium;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->clone()Lcom/android/webview/chromium/WebBackForwardListChromium;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentIndex()I
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mCurrentIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentItem()Landroid/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 69
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebBackForwardListChromium;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mHistroryItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebHistoryItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebBackForwardListChromium;->mHistroryItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
