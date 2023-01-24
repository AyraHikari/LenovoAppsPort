.class Landroidx/renderscript/RenderScriptThunker$1;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "RenderScriptThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/renderscript/RenderScriptThunker;->setMessageHandler(Landroidx/renderscript/RenderScript$RSMessageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/renderscript/RenderScriptThunker;


# direct methods
.method constructor <init>(Landroidx/renderscript/RenderScriptThunker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/renderscript/RenderScriptThunker$1;->this$0:Landroidx/renderscript/RenderScriptThunker;

    .line 102
    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker$1;->this$0:Landroidx/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    iget-object v1, p0, Landroidx/renderscript/RenderScriptThunker$1;->mData:[I

    iput-object v1, v0, Landroidx/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 105
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker$1;->this$0:Landroidx/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    iget v1, p0, Landroidx/renderscript/RenderScriptThunker$1;->mID:I

    iput v1, v0, Landroidx/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 106
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker$1;->this$0:Landroidx/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    iget v1, p0, Landroidx/renderscript/RenderScriptThunker$1;->mLength:I

    iput v1, v0, Landroidx/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 107
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker$1;->this$0:Landroidx/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript$RSMessageHandler;->run()V

    return-void
.end method
