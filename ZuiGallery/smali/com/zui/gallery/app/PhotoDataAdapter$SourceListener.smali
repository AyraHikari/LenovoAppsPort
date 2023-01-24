.class Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1166
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1200(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1200(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_0
    return-void
.end method
