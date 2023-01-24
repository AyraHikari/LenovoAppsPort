.class Lcom/zui/gallery/filtershow/imageshow/ImageDraw$1;
.super Ljava/lang/Object;
.source "ImageDraw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageDraw;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw$1;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->invalidate()V

    return-void
.end method
