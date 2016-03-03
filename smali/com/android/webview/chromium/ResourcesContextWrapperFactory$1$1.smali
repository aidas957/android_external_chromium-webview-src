.class Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;
.super Ljava/lang/ClassLoader;
.source "ResourcesContextWrapperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->getClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;

.field final synthetic val$appCl:Ljava/lang/ClassLoader;

.field final synthetic val$webViewCl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;->this$0:Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;

    iput-object p2, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;->val$webViewCl:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;->val$appCl:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;->val$webViewCl:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    iget-object v1, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;->val$appCl:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
