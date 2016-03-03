.class final Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;
.super Landroid/content/ContextWrapper;
.source "ResourcesContextWrapperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->createWrapper(Landroid/content/Context;)Landroid/content/ContextWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private applicationContext:Landroid/content/Context;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p2, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->get(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->applicationContext:Landroid/content/Context;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 60
    .local v0, "appCl":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 61
    .local v1, "webViewCl":Ljava/lang/ClassLoader;
    new-instance v2, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1$1;-><init>(Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    return-object v2
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "layout_inflater"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, "i":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .end local v0    # "i":Landroid/view/LayoutInflater;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 98
    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 103
    return-void
.end method
