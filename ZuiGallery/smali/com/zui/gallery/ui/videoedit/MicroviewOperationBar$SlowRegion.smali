.class Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;
.super Ljava/lang/Object;
.source "MicroviewOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlowRegion"
.end annotation


# instance fields
.field private volatile isActive:Z

.field private volatile isValid:Z

.field slowBarEndTime:J

.field private slowBarLeftRect:Landroid/graphics/RectF;

.field private slowBarRightRect:Landroid/graphics/RectF;

.field slowBarStartTime:J

.field final synthetic this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V
    .locals 2

    .line 1450
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1438
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    .line 1440
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    .line 1451
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    .line 1452
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Z
    .locals 0

    .line 1436
    iget-boolean p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isActive:Z

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;Z)Z
    .locals 0

    .line 1436
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;
    .locals 0

    .line 1436
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Landroid/graphics/RectF;
    .locals 0

    .line 1436
    iget-object p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)Z
    .locals 0

    .line 1436
    iget-boolean p0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid:Z

    return p0
.end method

.method private reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1519
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    .line 1520
    iput-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    .line 1521
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 1522
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    const/4 v0, 0x0

    .line 1523
    iput-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isActive:Z

    return-void
.end method


# virtual methods
.method canSplit()Z
    .locals 2

    .line 1467
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getDistance()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method copyRegion()V
    .locals 0

    return-void
.end method

.method exchange(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;)V
    .locals 1

    .line 1553
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method getDistance()I
    .locals 2

    .line 1471
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getSlowBarHeight()F
    .locals 1

    .line 1483
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method getSlowBarLeft()I
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    return v0
.end method

.method getSlowBarRight()I
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    return v0
.end method

.method isActive()Z
    .locals 1

    .line 1527
    invoke-virtual {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPressBarEnd(II)Z
    .locals 2

    int-to-float p1, p1

    .line 1541
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    int-to-float p1, p2

    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v1

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, v1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isPressBarStart(II)Z
    .locals 2

    int-to-float p1, p1

    .line 1535
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    int-to-float p1, p2

    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isPressRegion(II)Z
    .locals 1

    int-to-float p1, p1

    .line 1548
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    int-to-float p1, p2

    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isValid()Z
    .locals 1

    .line 1456
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid:Z

    return v0
.end method

.method updateActive(Z)V
    .locals 0

    .line 1531
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isActive:Z

    return-void
.end method

.method updateBarHeight(F)V
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 1498
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 1499
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method updateBarLeft(J)V
    .locals 3

    .line 1487
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    long-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1488
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarLeftRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    long-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method updateBarRight(J)V
    .locals 3

    .line 1492
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    long-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1493
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarRightRect:Landroid/graphics/RectF;

    long-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method updateValid(Z)V
    .locals 0

    .line 1460
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid:Z

    .line 1461
    iget-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid:Z

    if-nez p1, :cond_0

    .line 1462
    invoke-direct {p0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->reset()V

    :cond_0
    return-void
.end method
