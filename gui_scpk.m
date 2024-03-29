function varargout = gui_scpk(varargin)
% GUI_SCPK MATLAB code for gui_scpk.fig
%      GUI_SCPK, by itself, creates a new GUI_SCPK or raises the existing
%      singleton*.
%
%      H = GUI_SCPK returns the handle to a new GUI_SCPK or the handle to
%      the existing singleton*.
%
%      GUI_SCPK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_SCPK.M with the given input arguments.
%
%      GUI_SCPK('Property','Value',...) creates a new GUI_SCPK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_scpk_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_scpk_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_scpk

% Last Modified by GUIDE v2.5 14-Nov-2019 17:58:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_scpk_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_scpk_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_scpk is made visible.
function gui_scpk_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_scpk (see VARARGIN)

% Choose default command line output for gui_scpk
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_scpk wait for user response (see UIRESUME)
% uiwait(handles.hasil);


% --- Outputs from this function are returned to the command line.
function varargout = gui_scpk_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function perempuan_Callback(hObject, eventdata, handles)
% hObject    handle to perempuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of perempuan as text
%        str2double(get(hObject,'String')) returns contents of perempuan as a double


% --- Executes during object creation, after setting all properties.
function perempuan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to perempuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function laki_Callback(hObject, eventdata, handles)
% hObject    handle to laki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of laki as text
%        str2double(get(hObject,'String')) returns contents of laki as a double


% --- Executes during object creation, after setting all properties.
function laki_CreateFcn(hObject, eventdata, handles)
% hObject    handle to laki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

laki = handles.laki.String;
perempuan = handles.perempuan.String;

a1 = str2double(laki);
a2 = str2double(perempuan);

load scpk_projek.mat
result = sim(jst_scpk,[a1;a2]);
r = num2str(result);
handles.result.String = r;
