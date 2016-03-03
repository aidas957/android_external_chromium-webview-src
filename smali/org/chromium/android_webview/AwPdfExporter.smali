.class public Lorg/chromium/android_webview/AwPdfExporter;
.super Ljava/lang/Object;
.source "AwPdfExporter.java"


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mFd:Landroid/os/ParcelFileDescriptor;

.field private mNativeAwPdfExporter:J

.field private mResultCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "containerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/chromium/android_webview/AwPdfExporter;->setContainerView(Landroid/view/ViewGroup;)V

    .line 39
    return-void
.end method

.method private didExportPdf(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mResultCallback:Landroid/webkit/ValueCallback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 102
    iput-object v2, p0, Lorg/chromium/android_webview/AwPdfExporter;->mResultCallback:Landroid/webkit/ValueCallback;

    .line 103
    iput-object v2, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    .line 105
    iput-object v2, p0, Lorg/chromium/android_webview/AwPdfExporter;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 106
    return-void
.end method

.method private getBottomMargin()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result v0

    return v0
.end method

.method private getDpi()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-static {v0}, Lorg/chromium/android_webview/AwPdfExporter;->getPrintDpi(Landroid/print/PrintAttributes;)I

    move-result v0

    return v0
.end method

.method private getLeftMargin()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v0

    return v0
.end method

.method private getPageHeight()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v0

    return v0
.end method

.method private getPageWidth()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v0

    return v0
.end method

.method private static getPrintDpi(Landroid/print/PrintAttributes;)I
    .locals 5
    .param p0, "attributes"    # Landroid/print/PrintAttributes;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v0

    .line 91
    .local v0, "horizontalDpi":I
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v1

    .line 92
    .local v1, "verticalDpi":I
    if-eq v0, v1, :cond_0

    .line 93
    const-string v2, "AwPdfExporter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Horizontal and vertical DPIs differ. Using horizontal DPI  hDpi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vDPI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return v0
.end method

.method private getRightMargin()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v0

    return v0
.end method

.method private getTopMargin()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v0

    return v0
.end method

.method private native nativeExportToPdf(JILandroid/os/CancellationSignal;)V
.end method

.method private setNativeAwPdfExporter(J)V
    .locals 3
    .param p1, "nativePdfExporter"    # J

    .prologue
    .line 78
    iput-wide p1, p0, Lorg/chromium/android_webview/AwPdfExporter;->mNativeAwPdfExporter:J

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mResultCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mResultCallback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mResultCallback:Landroid/webkit/ValueCallback;

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public exportToPdf(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintAttributes;Landroid/webkit/ValueCallback;Landroid/os/CancellationSignal;)V
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/print/PrintAttributes;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/CancellationSignal;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p3, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resultCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mResultCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "printing is already pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes must specify a media size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v0

    if-nez v0, :cond_4

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes must specify print resolution"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    invoke-virtual {p2}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    if-nez v0, :cond_5

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes must specify margins"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_5
    iget-wide v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mNativeAwPdfExporter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_6
    iput-object p3, p0, Lorg/chromium/android_webview/AwPdfExporter;->mResultCallback:Landroid/webkit/ValueCallback;

    .line 71
    iput-object p2, p0, Lorg/chromium/android_webview/AwPdfExporter;->mAttributes:Landroid/print/PrintAttributes;

    .line 72
    iput-object p1, p0, Lorg/chromium/android_webview/AwPdfExporter;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 73
    iget-wide v0, p0, Lorg/chromium/android_webview/AwPdfExporter;->mNativeAwPdfExporter:J

    iget-object v2, p0, Lorg/chromium/android_webview/AwPdfExporter;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p4}, Lorg/chromium/android_webview/AwPdfExporter;->nativeExportToPdf(JILandroid/os/CancellationSignal;)V

    goto :goto_0
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "containerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/android_webview/AwPdfExporter;->mContainerView:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method
