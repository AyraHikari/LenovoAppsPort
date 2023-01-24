.class Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;
.super Ljava/lang/Object;
.source "MicroviewOperationBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$1;)V
    .locals 0

    .line 933
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;-><init>(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 938
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1, v0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;II)I

    move-result p1

    invoke-static {v1, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$702(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;I)I

    .line 939
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 940
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayedBarLeft = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " x ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 942
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateActive(Z)V

    .line 944
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 974
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    goto/16 :goto_0

    .line 970
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 971
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1502(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    goto :goto_0

    .line 966
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 967
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1502(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    goto :goto_0

    .line 962
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 963
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    int-to-long v8, v0

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v0

    iget-wide v10, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    sub-long/2addr v8, v10

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1502(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    goto :goto_0

    .line 958
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 959
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    int-to-long v8, v0

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v0

    iget-wide v10, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    sub-long/2addr v8, v10

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1502(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    goto :goto_0

    .line 948
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 949
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    int-to-long v8, v0

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1502(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    .line 950
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 952
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    add-int/lit8 v0, v0, -0x32

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    .line 953
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    .line 989
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    if-eq p1, v6, :cond_c

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    if-ne p1, v5, :cond_8

    goto/16 :goto_2

    .line 993
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    if-eq p1, v2, :cond_a

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    if-eq p1, v4, :cond_a

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 994
    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result p1

    if-ne p1, v3, :cond_9

    goto :goto_1

    .line 1009
    :cond_9
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    .line 1010
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)V

    goto :goto_3

    .line 995
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateActive(Z)V

    .line 996
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)V

    .line 997
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)V

    .line 998
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateActive(Z)V

    .line 999
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 1000
    new-instance p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;

    invoke-direct {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;-><init>()V

    .line 1001
    iput v1, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;->index:I

    .line 1002
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    iput-boolean v0, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;->delete:Z

    .line 1003
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slowregion1"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1005
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;->onSlowReginClick(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;)V

    :cond_b
    move v1, v7

    goto :goto_3

    .line 990
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 991
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)V

    .line 992
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    .line 1012
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPressing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPressSlowBarRegion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result p1

    if-ne p1, v7, :cond_e

    .line 1014
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;

    move-result-object p1

    if-eqz p1, :cond_e

    if-nez v1, :cond_e

    .line 1015
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1016
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;->onSeekStart()V

    goto :goto_4

    .line 1018
    :cond_d
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;->onSeekMove(J)V

    .line 1022
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    return v7
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 25

    move-object/from16 v0, p0

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-long v1, v1

    iget-object v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v3

    sub-long v6, v1, v3

    .line 1057
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 1058
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v14, -0x1

    if-eq v1, v2, :cond_c

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_4

    const/4 v8, 0x4

    if-eq v1, v8, :cond_3

    const/4 v8, 0x5

    if-eq v1, v8, :cond_1

    :cond_0
    :goto_0
    move-wide v6, v14

    goto/16 :goto_4

    .line 1153
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v1

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1154
    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v5

    add-int/2addr v1, v5

    int-to-long v10, v1

    .line 1155
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    .line 1156
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1157
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v1

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1158
    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-long v8, v1

    :cond_2
    move-wide v12, v8

    .line 1160
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v13}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;JJJJ)J

    move-result-wide v5

    .line 1163
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarRight(J)V

    .line 1165
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    goto :goto_1

    .line 1141
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v10, v1

    add-long/2addr v10, v8

    .line 1142
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v1

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-long v12, v1

    .line 1143
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v13}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;JJJJ)J

    move-result-wide v5

    .line 1146
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarLeft(J)V

    .line 1148
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    :goto_1
    move v5, v2

    goto/16 :goto_0

    .line 1106
    :cond_4
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    .line 1107
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1108
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v8, v1

    add-long v21, v6, v8

    .line 1109
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-long v6, v1

    .line 1111
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1112
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v9

    iget-wide v9, v9, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    const-wide/16 v19, 0x0

    move-object/from16 v16, v8

    move-wide/from16 v17, v9

    move-wide/from16 v23, v6

    invoke-static/range {v16 .. v24}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;JJJJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    .line 1116
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    .line 1117
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v5

    .line 1120
    :goto_2
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1121
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v8

    iget-wide v8, v8, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 1122
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarRight(J)V

    move v5, v2

    .line 1126
    :cond_6
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v7

    .line 1127
    invoke-virtual {v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1128
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v8

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_7

    .line 1129
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1130
    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-long v6, v6

    .line 1129
    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarLeft(J)V

    move v5, v2

    .line 1134
    :cond_7
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v6

    goto/16 :goto_4

    .line 1072
    :cond_8
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v21, 0x0

    .line 1074
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1075
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v8, v1

    sub-long v23, v6, v8

    .line 1076
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1077
    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v7

    iget-wide v7, v7, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v19, 0x0

    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    invoke-static/range {v16 .. v24}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;JJJJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    .line 1081
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v10, v1

    add-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-gez v1, :cond_9

    .line 1082
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    move v1, v2

    goto :goto_3

    :cond_9
    move v1, v5

    .line 1085
    :goto_3
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1086
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v8

    iget-wide v8, v8, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v10, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1087
    invoke-static {v10}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gtz v6, :cond_a

    .line 1088
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1089
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 1088
    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarLeft(J)V

    move v5, v2

    .line 1092
    :cond_a
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarRight()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v7

    .line 1093
    invoke-virtual {v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1094
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v8

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_b

    .line 1095
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1096
    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v6, v6

    .line 1095
    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateBarRight(J)V

    move v5, v2

    .line 1100
    :cond_b
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v6

    goto :goto_4

    .line 1060
    :cond_c
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v8, v1

    add-long v21, v6, v8

    .line 1061
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    int-to-long v8, v1

    sub-long v23, v6, v8

    .line 1063
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v6, -0x32

    int-to-long v6, v6

    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    .line 1064
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1065
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v16 .. v24}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2800(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;JJJJ)J

    move-result-wide v6

    .line 1064
    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;J)J

    .line 1068
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)V

    .line 1069
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)J

    move-result-wide v6

    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_d

    .line 1195
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;

    move-result-object v1

    invoke-interface {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$seekBarListener;->onSeekMove(J)V

    .line 1198
    :cond_d
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    if-eq v1, v4, :cond_e

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 1199
    :cond_e
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1200
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$3300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;

    move-result-object v1

    iget-object v3, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v3

    iget-wide v3, v3, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->startTime:J

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1201
    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimBarRegion;->endTime:J

    .line 1200
    invoke-interface {v1, v3, v4, v6, v7}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$TrimingBarListener;->onTrimingMove(JJ)V

    .line 1204
    :cond_f
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1205
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    if-eqz v1, :cond_14

    if-eqz v5, :cond_14

    .line 1206
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    iget-wide v3, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    move-wide v6, v3

    goto :goto_5

    :cond_10
    move-wide v6, v14

    .line 1208
    :goto_5
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    iget-wide v3, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    move-wide v8, v3

    goto :goto_6

    :cond_11
    move-wide v8, v14

    .line 1210
    :goto_6
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    iget-wide v3, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarStartTime:J

    move-wide v10, v3

    goto :goto_7

    :cond_12
    move-wide v10, v14

    .line 1212
    :goto_7
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v1

    iget-wide v14, v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->slowBarEndTime:J

    :cond_13
    move-wide v12, v14

    .line 1214
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object v5

    invoke-interface/range {v5 .. v13}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;->onSlowBarMove(JJJJ)V

    .line 1217
    :cond_14
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    :cond_15
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1028
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 1029
    new-instance p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;

    invoke-direct {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;-><init>()V

    .line 1030
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    .line 1031
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->updateActive(Z)V

    .line 1035
    iput v2, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;->index:I

    .line 1036
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowRegion;->isValid()Z

    move-result v0

    iput-boolean v0, p1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;->delete:Z

    .line 1037
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$1000(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slowregion2"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;->onSlowReginClick(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$RegionAction;)V

    goto :goto_0

    .line 1042
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1043
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2102(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;Z)Z

    .line 1044
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$SlowBarListener;->onNoneReginClick()V

    .line 1047
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->access$702(Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;I)I

    .line 1048
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;->invalidate()V

    return v2
.end method
