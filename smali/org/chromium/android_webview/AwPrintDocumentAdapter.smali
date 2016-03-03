.class public Lorg/chromium/android_webview/AwPrintDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "AwPrintDocumentAdapter.java"


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field private mDocumentName:Ljava/lang/String;

.field private mPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;


# direct methods
.method public constructor <init>(Lorg/chromium/android_webview/AwPdfExporter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pdfExporter"    # Lorg/chromium/android_webview/AwPdfExporter;
    .param p2, "documentName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/chromium/android_webview/AwPrintDocumentAdapter;->mPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    .line 46
    iput-object p2, p0, Lorg/chromium/android_webview/AwPrintDocumentAdapter;->mDocumentName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 54
    iput-object p2, p0, Lorg/chromium/android_webview/AwPrintDocumentAdapter;->mAttributes:Landroid/print/PrintAttributes;

    .line 55
    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Lorg/chromium/android_webview/AwPrintDocumentAdapter;->mDocumentName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 62
    .local v0, "documentInfo":Landroid/print/PrintDocumentInfo;
    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 63
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 3
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/android_webview/AwPrintDocumentAdapter;->mPdfExporter:Lorg/chromium/android_webview/AwPdfExporter;

    iget-object v1, p0, Lorg/chromium/android_webview/AwPrintDocumentAdapter;->mAttributes:Landroid/print/PrintAttributes;

    new-instance v2, Lorg/chromium/android_webview/AwPrintDocumentAdapter$1;

    invoke-direct {v2, p0, p4}, Lorg/chromium/android_webview/AwPrintDocumentAdapter$1;-><init>(Lorg/chromium/android_webview/AwPrintDocumentAdapter;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    invoke-virtual {v0, p2, v1, v2, p3}, Lorg/chromium/android_webview/AwPdfExporter;->exportToPdf(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintAttributes;Landroid/webkit/ValueCallback;Landroid/os/CancellationSignal;)V

    .line 79
    return-void
.end method
