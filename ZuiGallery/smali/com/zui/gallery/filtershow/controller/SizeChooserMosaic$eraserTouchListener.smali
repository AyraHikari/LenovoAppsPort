.class Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;
.super Ljava/lang/Object;
.source "SizeChooserMosaic.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "eraserTouchListener"
.end annotation


# instance fields
.field private mScaleStarted:Z

.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;->mScaleStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x7f080192

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$400(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;I)V

    .line 162
    sput-boolean v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 163
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$eraserTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$400(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;I)V

    .line 166
    sput-boolean v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 167
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
