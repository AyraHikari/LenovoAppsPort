.class Landroidx/renderscript/RenderScriptThunker$2;
.super Landroid/renderscript/RenderScript$RSErrorHandler;
.source "RenderScriptThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/renderscript/RenderScriptThunker;->setErrorHandler(Landroidx/renderscript/RenderScript$RSErrorHandler;)V
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
    iput-object p1, p0, Landroidx/renderscript/RenderScriptThunker$2;->this$0:Landroidx/renderscript/RenderScriptThunker;

    .line 120
    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker$2;->this$0:Landroidx/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    iget-object v1, p0, Landroidx/renderscript/RenderScriptThunker$2;->mErrorMessage:Ljava/lang/String;

    iput-object v1, v0, Landroidx/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker$2;->this$0:Landroidx/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    iget v1, p0, Landroidx/renderscript/RenderScriptThunker$2;->mErrorNum:I

    iput v1, v0, Landroidx/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 124
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker$2;->this$0:Landroidx/renderscript/RenderScriptThunker;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript$RSErrorHandler;->run()V

    return-void
.end method
