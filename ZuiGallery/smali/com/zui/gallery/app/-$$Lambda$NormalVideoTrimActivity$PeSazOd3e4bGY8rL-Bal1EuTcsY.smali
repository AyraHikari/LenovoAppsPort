.class public final synthetic Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$PeSazOd3e4bGY8rL-Bal1EuTcsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$PeSazOd3e4bGY8rL-Bal1EuTcsY;->f$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    return-void
.end method


# virtual methods
.method public final run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$PeSazOd3e4bGY8rL-Bal1EuTcsY;->f$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->lambda$parseNvsVideoThumbnail$1$NormalVideoTrimActivity(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
