.class Lcom/zui/gallery/banner/FileListDetailsActivity$1;
.super Ljava/lang/Object;
.source "FileListDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/FileListDetailsActivity;->getPrivacyList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$FileListDetailsActivity$1(Ljava/io/File;Ljava/lang/Boolean;)V
    .locals 2

    .line 169
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v0}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$100(Lcom/zui/gallery/banner/FileListDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value == "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileListDetailsActivity"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .locals 8

    .line 155
    invoke-static {}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FileListDetailsActivity"

    const/16 v2, 0x3e9

    if-eqz v0, :cond_3

    .line 157
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    invoke-static {}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 159
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 161
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_0

    .line 163
    aget-object v6, v4, v5

    .line 164
    invoke-static {v6}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/io/File;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 168
    new-instance v4, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$1$jCOh-a92dfoMiQxPJJW2ZchWM3Y;

    invoke-direct {v4, p0}, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$1$jCOh-a92dfoMiQxPJJW2ZchWM3Y;-><init>(Lcom/zui/gallery/banner/FileListDetailsActivity$1;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 177
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrivacyFiles is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v4}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$100(Lcom/zui/gallery/banner/FileListDetailsActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v3}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$100(Lcom/zui/gallery/banner/FileListDetailsActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v3}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$100(Lcom/zui/gallery/banner/FileListDetailsActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 179
    iget-object v2, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v2}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$200(Lcom/zui/gallery/banner/FileListDetailsActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v3}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$200(Lcom/zui/gallery/banner/FileListDetailsActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 185
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->this$0:Lcom/zui/gallery/banner/FileListDetailsActivity;

    invoke-static {v3}, Lcom/zui/gallery/banner/FileListDetailsActivity;->access$200(Lcom/zui/gallery/banner/FileListDetailsActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directory == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
