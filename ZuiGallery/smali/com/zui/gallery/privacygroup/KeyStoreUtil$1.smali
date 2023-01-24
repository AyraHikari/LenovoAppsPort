.class Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;
.super Ljava/lang/Object;
.source "KeyStoreUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptVideoToStream(Ljava/lang/String;Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;


# direct methods
.method constructor <init>(Lcom/zui/gallery/privacygroup/KeyStoreUtil;Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;Ljava/lang/String;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;->this$0:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    iput-object p2, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;->val$listener:Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;

    iput-object p3, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;->val$listener:Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;

    iget-object v1, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;->this$0:Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    iget-object v2, p0, Lcom/zui/gallery/privacygroup/KeyStoreUtil$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFileTostream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;->onLoadFinish(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
