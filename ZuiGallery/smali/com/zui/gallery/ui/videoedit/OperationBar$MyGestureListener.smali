.class Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;
.super Ljava/lang/Object;
.source "OperationBar.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/videoedit/OperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/videoedit/OperationBar;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/videoedit/OperationBar;Lcom/zui/gallery/ui/videoedit/OperationBar$1;)V
    .locals 0

    .line 912
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;-><init>(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 917
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1, v0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$800(Lcom/zui/gallery/ui/videoedit/OperationBar;II)I

    move-result p1

    invoke-static {v1, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$702(Lcom/zui/gallery/ui/videoedit/OperationBar;I)I

    .line 918
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 919
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateActive(Z)V

    .line 922
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

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

    goto :goto_0

    .line 946
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    goto :goto_0

    .line 942
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 943
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1302(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    goto :goto_0

    .line 938
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 939
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-long v8, v0

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1302(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    goto :goto_0

    .line 934
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 935
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    int-to-long v8, v0

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v0

    iget-wide v10, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    sub-long/2addr v8, v10

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1302(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    goto :goto_0

    .line 930
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 931
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    int-to-long v8, v0

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v0

    iget-wide v10, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    sub-long/2addr v8, v10

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1302(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    goto :goto_0

    .line 926
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 927
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    int-to-long v8, v0

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1400(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {p1, v8, v9}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1302(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    .line 961
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result p1

    if-eq p1, v6, :cond_b

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result p1

    if-ne p1, v5, :cond_7

    goto/16 :goto_2

    .line 965
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result p1

    if-eq p1, v2, :cond_9

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result p1

    if-eq p1, v4, :cond_9

    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 966
    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result p1

    if-ne p1, v3, :cond_8

    goto :goto_1

    .line 981
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    .line 982
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1500(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)V

    goto :goto_3

    .line 967
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateActive(Z)V

    .line 968
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1700(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)V

    .line 969
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1500(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)V

    .line 970
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateActive(Z)V

    .line 971
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1802(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 972
    new-instance p1, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;

    invoke-direct {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;-><init>()V

    .line 973
    iput v1, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;->index:I

    .line 974
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    iput-boolean v0, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;->delete:Z

    .line 975
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slowregion1"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 977
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;->onSlowReginClick(Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;)V

    :cond_a
    move v1, v7

    goto :goto_3

    .line 962
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->updateActivte(Z)V

    .line 963
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1500(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)V

    .line 964
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    .line 984
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Z

    move-result p1

    if-ne p1, v7, :cond_c

    .line 985
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;

    move-result-object p1

    if-eqz p1, :cond_c

    if-nez v1, :cond_c

    .line 986
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;->onSeekStart()V

    .line 989
    :cond_c
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

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

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-long v1, v1

    iget-object v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v3}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1300(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v3

    sub-long v6, v1, v3

    .line 1024
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 1025
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

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

    .line 1119
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v1

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1120
    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v5

    add-int/2addr v1, v5

    int-to-long v10, v1

    .line 1121
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    .line 1122
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1123
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v1

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1124
    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$3100(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-long v8, v1

    :cond_2
    move-wide v12, v8

    .line 1126
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v13}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/OperationBar;JJJJ)J

    move-result-wide v5

    .line 1129
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarRight(J)V

    .line 1131
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    goto :goto_1

    .line 1107
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    int-to-long v10, v1

    add-long/2addr v10, v8

    .line 1108
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v1

    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-long v12, v1

    .line 1109
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v13}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/OperationBar;JJJJ)J

    move-result-wide v5

    .line 1112
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarLeft(J)V

    .line 1114
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    :goto_1
    move v5, v2

    goto/16 :goto_0

    .line 1072
    :cond_4
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    .line 1073
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2800(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1074
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    int-to-long v8, v1

    add-long v21, v6, v8

    .line 1075
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$3000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-long v6, v1

    .line 1077
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1078
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v9

    iget-wide v9, v9, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    const-wide/16 v19, 0x0

    move-object/from16 v16, v8

    move-wide/from16 v17, v9

    move-wide/from16 v23, v6

    invoke-static/range {v16 .. v24}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/OperationBar;JJJJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    .line 1082
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1400(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    .line 1083
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v5

    .line 1086
    :goto_2
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1087
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v8

    iget-wide v8, v8, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 1088
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarRight(J)V

    move v5, v2

    .line 1092
    :cond_6
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v7

    .line 1093
    invoke-virtual {v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1094
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v8

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_7

    .line 1095
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1096
    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-long v6, v6

    .line 1095
    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarLeft(J)V

    move v5, v2

    .line 1100
    :cond_7
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v6

    goto/16 :goto_4

    .line 1038
    :cond_8
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v21, 0x0

    .line 1040
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2800(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1041
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    int-to-long v8, v1

    sub-long v23, v6, v8

    .line 1042
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1043
    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v7

    iget-wide v7, v7, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    const-wide/16 v19, 0x0

    move-object/from16 v16, v6

    move-wide/from16 v17, v7

    invoke-static/range {v16 .. v24}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/OperationBar;JJJJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    .line 1047
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1400(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    int-to-long v10, v1

    add-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-gez v1, :cond_9

    .line 1048
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    move v1, v2

    goto :goto_3

    :cond_9
    move v1, v5

    .line 1051
    :goto_3
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1052
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v8

    iget-wide v8, v8, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v10, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1053
    invoke-static {v10}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gtz v6, :cond_a

    .line 1054
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1055
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 1054
    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarLeft(J)V

    move v5, v2

    .line 1058
    :cond_a
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarRight()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v7

    .line 1059
    invoke-virtual {v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1060
    invoke-static {v8}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v8

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_b

    .line 1061
    iget-object v5, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v5}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v5

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->getSlowBarLeft()I

    move-result v6

    iget-object v7, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1062
    invoke-static {v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2900(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-long v6, v6

    .line 1061
    invoke-virtual {v5, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateBarRight(J)V

    move v5, v2

    .line 1066
    :cond_b
    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v6

    goto :goto_4

    .line 1027
    :cond_c
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barStartLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2300(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    int-to-long v10, v1

    add-long v21, v8, v10

    .line 1028
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v1

    iget-wide v8, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->barEndLeft:J

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2400(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    int-to-long v10, v1

    sub-long v23, v8, v10

    .line 1029
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    .line 1030
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1031
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1400(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v16 .. v24}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2500(Lcom/zui/gallery/ui/videoedit/OperationBar;JJJJ)J

    move-result-wide v6

    .line 1030
    invoke-static {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1402(Lcom/zui/gallery/ui/videoedit/OperationBar;J)J

    .line 1034
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2600(Lcom/zui/gallery/ui/videoedit/OperationBar;)V

    .line 1035
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2700(Lcom/zui/gallery/ui/videoedit/OperationBar;)J

    move-result-wide v6

    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_d

    .line 1161
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;

    move-result-object v1

    invoke-interface {v1, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$seekBarListener;->onSeekMove(J)V

    .line 1164
    :cond_d
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    if-eq v1, v4, :cond_e

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 1165
    :cond_e
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$3200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1166
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$3200(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;

    move-result-object v1

    iget-object v3, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v3}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v3

    iget-wide v3, v3, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->startTime:J

    iget-object v6, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1167
    invoke-static {v6}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;

    move-result-object v6

    iget-wide v6, v6, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimBarRegion;->endTime:J

    .line 1166
    invoke-interface {v1, v3, v4, v6, v7}, Lcom/zui/gallery/ui/videoedit/OperationBar$TrimingBarListener;->onTrimingMove(JJ)V

    .line 1170
    :cond_f
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 1171
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    if-eqz v1, :cond_14

    if-eqz v5, :cond_14

    .line 1172
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    iget-wide v3, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    move-wide v6, v3

    goto :goto_5

    :cond_10
    move-wide v6, v14

    .line 1174
    :goto_5
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    iget-wide v3, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    move-wide v8, v3

    goto :goto_6

    :cond_11
    move-wide v8, v14

    .line 1176
    :goto_6
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    iget-wide v3, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarStartTime:J

    move-wide v10, v3

    goto :goto_7

    :cond_12
    move-wide v10, v14

    .line 1178
    :goto_7
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v1

    iget-wide v14, v1, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->slowBarEndTime:J

    :cond_13
    move-wide v12, v14

    .line 1180
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object v5

    invoke-interface/range {v5 .. v13}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;->onSlowBarMove(JJJJ)V

    .line 1183
    :cond_14
    iget-object v1, v0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

    :cond_15
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 995
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1202(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 996
    new-instance p1, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;

    invoke-direct {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;-><init>()V

    .line 997
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    .line 998
    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$700(Lcom/zui/gallery/ui/videoedit/OperationBar;)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->updateActive(Z)V

    .line 1002
    iput v2, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;->index:I

    .line 1003
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1900(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowRegion;->isValid()Z

    move-result v0

    iput-boolean v0, p1, Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;->delete:Z

    .line 1004
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2000(Lcom/zui/gallery/ui/videoedit/OperationBar;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slowregion2"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;->onSlowReginClick(Lcom/zui/gallery/ui/videoedit/OperationBar$RegionAction;)V

    goto :goto_0

    .line 1009
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1010
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$1802(Lcom/zui/gallery/ui/videoedit/OperationBar;Z)Z

    .line 1011
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-static {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$2100(Lcom/zui/gallery/ui/videoedit/OperationBar;)Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar$SlowBarListener;->onNoneReginClick()V

    .line 1014
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/videoedit/OperationBar;->access$702(Lcom/zui/gallery/ui/videoedit/OperationBar;I)I

    .line 1015
    iget-object p1, p0, Lcom/zui/gallery/ui/videoedit/OperationBar$MyGestureListener;->this$0:Lcom/zui/gallery/ui/videoedit/OperationBar;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/videoedit/OperationBar;->invalidate()V

    return v2
.end method
