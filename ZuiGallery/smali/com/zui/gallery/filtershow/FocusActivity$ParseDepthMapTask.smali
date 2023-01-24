.class Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;
.super Landroid/os/AsyncTask;
.source "FocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseDepthMapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private end:J

.field private start:J

.field final synthetic this$0:Lcom/zui/gallery/filtershow/FocusActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/FocusActivity;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/FocusActivity;Lcom/zui/gallery/filtershow/FocusActivity$1;)V
    .locals 0

    .line 1040
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 10

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->start:J

    .line 1046
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, v0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2200(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1047
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2400(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->getDisparity()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2302(Lcom/zui/gallery/filtershow/FocusActivity;[B)[B

    .line 1048
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2400(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->getOtp()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2502(Lcom/zui/gallery/filtershow/FocusActivity;[B)[B

    .line 1049
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2400(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->getBlurLevel()I

    move-result v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2602(Lcom/zui/gallery/filtershow/FocusActivity;I)I

    .line 1050
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2400(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->getVendorType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2702(Lcom/zui/gallery/filtershow/FocusActivity;I)I

    .line 1052
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2700(Lcom/zui/gallery/filtershow/FocusActivity;)I

    .line 1064
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2400(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->decodeOriginImage()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 1067
    new-array v3, v0, [I

    .line 1068
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {v2, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1902(Lcom/zui/gallery/filtershow/FocusActivity;[B)[B

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v5, v8

    .line 1069
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1076
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1082
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1900(Lcom/zui/gallery/filtershow/FocusActivity;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2300(Lcom/zui/gallery/filtershow/FocusActivity;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1040
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .line 1087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->end:J

    .line 1088
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse xmp consume "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->end:J

    iget-wide v2, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->start:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FocusActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1100(Lcom/zui/gallery/filtershow/FocusActivity;)V

    .line 1090
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2700(Lcom/zui/gallery/filtershow/FocusActivity;)I

    .line 1102
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2800(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2600(Lcom/zui/gallery/filtershow/FocusActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1103
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$300(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2600(Lcom/zui/gallery/filtershow/FocusActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$2900(Lcom/zui/gallery/filtershow/FocusActivity;)V

    .line 1105
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$3002(Lcom/zui/gallery/filtershow/FocusActivity;Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;)Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1040
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
