.class Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;
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
    name = "penTouchListener"
.end annotation


# instance fields
.field private mScaleStarted:Z

.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;->mScaleStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x7f08024a

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$400(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;I)V

    .line 146
    sput-boolean v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 147
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 149
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$penTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$400(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;I)V

    .line 150
    sput-boolean v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 151
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    :cond_1
    :goto_0
    return v1
.end method
