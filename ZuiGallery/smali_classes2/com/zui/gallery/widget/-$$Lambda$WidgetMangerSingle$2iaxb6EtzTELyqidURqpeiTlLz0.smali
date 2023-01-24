.class public final synthetic Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;ILandroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iput p2, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$1:I

    iput-object p3, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$3:I

    iput p5, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    iget v1, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$1:I

    iget-object v2, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$2:Landroid/content/Context;

    iget v3, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$3:I

    iget v4, p0, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->lambda$threadLoadCacheBitmap$0$WidgetMangerSingle(ILandroid/content/Context;II)V

    return-void
.end method
