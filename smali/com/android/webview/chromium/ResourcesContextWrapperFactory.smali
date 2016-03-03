.class public Lcom/android/webview/chromium/ResourcesContextWrapperFactory;
.super Ljava/lang/Object;
.source "ResourcesContextWrapperFactory.java"


# static fields
.field private static sCtxToWrapper:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/content/ContextWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->sCtxToWrapper:Ljava/util/WeakHashMap;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private static createWrapper(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v0, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;

    invoke-direct {v0, p0, p0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory$1;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v2, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :try_start_0
    sget-object v1, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->sCtxToWrapper:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 45
    .local v0, "wrappedCtx":Landroid/content/ContextWrapper;
    if-nez v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->createWrapper(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/android/webview/chromium/ResourcesContextWrapperFactory;->sCtxToWrapper:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    monitor-exit v2

    .line 50
    return-object v0

    .line 49
    .end local v0    # "wrappedCtx":Landroid/content/ContextWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
