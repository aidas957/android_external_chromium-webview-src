.class Lcom/android/webview/chromium/WebStorageAdapter$1;
.super Ljava/lang/Object;
.source "WebStorageAdapter.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebStorageAdapter;->getOrigins(Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebStorageAdapter;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebStorageAdapter;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/webview/chromium/WebStorageAdapter$1;->this$0:Lcom/android/webview/chromium/WebStorageAdapter;

    iput-object p2, p0, Lcom/android/webview/chromium/WebStorageAdapter$1;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;)V
    .locals 9
    .param p1, "origins"    # Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;

    .prologue
    .line 42
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v8, "originsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/webkit/WebStorage$Origin;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;->mOrigins:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 44
    new-instance v1, Lcom/android/webview/chromium/WebStorageAdapter$1$1;

    iget-object v2, p1, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;->mOrigins:[Ljava/lang/String;

    aget-object v3, v2, v0

    iget-object v2, p1, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;->mQuotas:[J

    aget-wide v4, v2, v0

    iget-object v2, p1, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;->mUsages:[J

    aget-wide v6, v2, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/webview/chromium/WebStorageAdapter$1$1;-><init>(Lcom/android/webview/chromium/WebStorageAdapter$1;Ljava/lang/String;JJ)V

    .line 49
    .local v1, "origin":Landroid/webkit/WebStorage$Origin;
    iget-object v2, p1, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;->mOrigins:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "origin":Landroid/webkit/WebStorage$Origin;
    :cond_0
    iget-object v2, p0, Lcom/android/webview/chromium/WebStorageAdapter$1;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/webview/chromium/WebStorageAdapter$1;->onReceiveValue(Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge$Origins;)V

    return-void
.end method
