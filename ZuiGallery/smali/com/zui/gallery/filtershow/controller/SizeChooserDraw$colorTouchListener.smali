.class Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;
.super Ljava/lang/Object;
.source "SizeChooserDraw.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "colorTouchListener"
.end annotation


# instance fields
.field private mScaleStarted:Z

.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;->mScaleStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iput-boolean v0, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isColorClick:Z

    .line 207
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDrawColor:Z

    .line 208
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 210
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iput-boolean v0, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isColorClick:Z

    .line 211
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDrawColor:Z

    .line 212
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
