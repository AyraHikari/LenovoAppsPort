.class Lcom/zui/gallery/app/NormalVideoTrimActivity$1;
.super Ljava/lang/Object;
.source "NormalVideoTrimActivity.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/NormalVideoTrimActivity;->initNvsLiveWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iput p1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mCurrentVideoFilterPosition:I

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsVideoClip;->removeAllFx()Z

    .line 169
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->access$000(Lcom/zui/gallery/app/NormalVideoTrimActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getPackageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->access$000(Lcom/zui/gallery/app/NormalVideoTrimActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->appendPackagedFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsVideoFx;->getVideoFxPackageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFxPackageId:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    const-string v1, "isFilterValid"

    iput-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFxPackageId:Ljava/lang/String;

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-wide v0, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-wide v2, v2, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v2, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-wide v3, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTrimStartTime:J

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    goto :goto_1

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v1, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mNvsStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v2, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->play()V

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$1;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mVideoFilterAdapter:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->setPo(I)V

    return-void
.end method
