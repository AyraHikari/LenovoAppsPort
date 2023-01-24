.class public final synthetic Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$DecoderListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/app/MicroVideoTrimActivity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;->f$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iput p2, p0, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;->f$1:I

    iput p3, p0, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final onFirstFrameDecoder(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;->f$0:Lcom/zui/gallery/app/MicroVideoTrimActivity;

    iget v1, p0, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;->f$1:I

    iget v2, p0, Lcom/zui/gallery/app/-$$Lambda$MicroVideoTrimActivity$0n8gpjmFHJX-XtpEVMzifI58XWQ;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/gallery/app/MicroVideoTrimActivity;->lambda$parseVideoThumbnailBitmap$0$MicroVideoTrimActivity(IILandroid/graphics/Bitmap;)V

    return-void
.end method
