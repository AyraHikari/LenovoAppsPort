.class Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;
.super Ljava/lang/Object;
.source "MicroviewOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrimBarRegion"
.end annotation


# instance fields
.field barEndLeft:J

.field barStartLeft:J

.field endTime:J

.field private isActivte:Z

.field private isValid:Z

.field startTime:J

.field final synthetic this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;)V
    .locals 0

    .line 1394
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    return-void
.end method

.method static synthetic access$302(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;Z)Z
    .locals 0

    .line 1394
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isActivte:Z

    return p1
.end method


# virtual methods
.method isActivte()Z
    .locals 1

    .line 1410
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isActivte:Z

    return v0
.end method

.method isChanged()Z
    .locals 4

    .line 1422
    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isPressEndBar(II)Z
    .locals 6

    int-to-long v0, p1

    .line 1431
    iget-wide v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1432
    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v0

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isPressStartBar(II)Z
    .locals 6

    int-to-long v0, p1

    .line 1426
    iget-wide v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1427
    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v0

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isValid()Z
    .locals 1

    .line 1414
    iget-boolean v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isValid:Z

    return v0
.end method

.method updateActivte(Z)V
    .locals 0

    .line 1406
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isActivte:Z

    return-void
.end method

.method updateIsValid(Z)V
    .locals 0

    .line 1418
    iput-boolean p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->isValid:Z

    return-void
.end method
